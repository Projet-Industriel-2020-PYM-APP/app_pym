import 'package:app_pym/data/datasources/firebase_auth_data_source.dart';
import 'package:app_pym/data/models/firebase_auth/app_user_model.dart';
import 'package:app_pym/injection_container.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:injectable/injectable.dart' show Environment;

class MockCollectionReference extends Mock implements CollectionReference {}

// ignore: avoid_implementing_value_types
class MockDocumentReference extends Mock implements DocumentReference {}

class MockDocumentSnapshot extends Mock implements DocumentSnapshot {}

class MockFirebaseUser extends Mock implements FirebaseUser {
  @override
  String get uid => 'uid';

  @override
  String get email => 'example@example.com';

  @override
  String get photoUrl => null;

  @override
  String get displayName => null;
}

class MockAuthResult extends Mock implements AuthResult {}

void main() {
  FirebaseAuthDataSource dataSource;
  Firestore mockFirestore;
  FirebaseAuth mockFirebaseAuth;
  CollectionReference mockCollectionReference;
  DocumentReference mockDocumentReference;
  DocumentSnapshot mockDocumentSnapshot;
  FirebaseUser mockFirebaseUser;
  final userJson = <String, dynamic>{
    'uid': 'uid',
    'displayName': null,
    'email': 'example@example.com',
    'isAdmin': false,
    'isEmailVerified': false,
    'lastSeen': Timestamp.fromDate(DateTime.now()),
    'photoUrl': null,
  };
  final AppUserModel tAppUserModel = AppUserModel.fromJson(userJson);

  init(env: Environment.test);

  setUp(() {
    mockFirestore = sl<Firestore>();
    mockFirebaseAuth = sl<FirebaseAuth>();
    dataSource = FirebaseAuthDataSourceImpl(
      db: mockFirestore,
      auth: mockFirebaseAuth,
    );
    mockDocumentReference = MockDocumentReference();
    mockCollectionReference = MockCollectionReference();
    mockDocumentSnapshot = MockDocumentSnapshot();
    mockFirebaseUser = MockFirebaseUser();
  });

  void setUpFirestore() {
    // Expected Entrypoint
    when(mockFirestore.collection('users')).thenReturn(mockCollectionReference);
    when(mockCollectionReference.document(tAppUserModel.uid))
        .thenReturn(mockDocumentReference);
    when(mockDocumentReference.snapshots())
        .thenAnswer((_) => Stream.fromIterable([mockDocumentSnapshot]));

    // Expected data
    when(mockDocumentSnapshot.data).thenReturn(userJson);
  }

  group('get profile', () {
    test(
      "should get AppUserModel from users collection for the corresponding Firebase User",
      () async {
        // arrange
        setUpFirestore();

        when(mockFirebaseAuth.onAuthStateChanged)
            .thenAnswer((_) => Stream.fromIterable([mockFirebaseUser]));
        // act
        final stream = dataSource.profile;
        // assert
        await expectLater(stream, emitsInOrder(<AppUserModel>[tAppUserModel]));
        verify(mockFirestore.collection('users'));
        verify(mockCollectionReference.document(mockFirebaseUser.uid));
        verify(mockDocumentReference.snapshots());
      },
    );
    test(
      "should get null if not logged in",
      () async {
        // arrange
        setUpFirestore();

        when(mockFirebaseAuth.onAuthStateChanged)
            .thenAnswer((_) => Stream.fromIterable([null]));
        // act
        final stream = dataSource.profile;
        // assert
        await expectLater(stream, emitsInOrder(<AppUserModel>[null]));
        verifyZeroInteractions(mockFirestore);
      },
    );
  });

  group('forgotPassword', () {
    test(
      "should sendPasswordResetEmail",
      () async {
        // act
        await dataSource.forgotPassword("email");
        // assert
        verify(mockFirebaseAuth.sendPasswordResetEmail(email: "email"));
      },
    );
  });

  group('sendEmailVerification', () {
    test(
      "should do nothing if not logged in",
      () async {
        // arrange
        when(mockFirebaseAuth.currentUser()).thenAnswer((_) async => null);
        // act
        await dataSource.sendEmailVerification();
      },
    );
    test(
      "should reload the current User if logged in",
      () async {
        // arrange
        when(mockFirebaseAuth.currentUser())
            .thenAnswer((_) async => mockFirebaseUser);
        when(mockFirebaseUser.isEmailVerified).thenReturn(true);
        setUpFirestore();
        // act
        await dataSource.sendEmailVerification();
        // assert
        verify(mockFirebaseUser.reload());
      },
    );
    test(
      "should update the current User if logged in and email already verified",
      () async {
        // arrange
        when(mockFirebaseAuth.currentUser())
            .thenAnswer((_) async => mockFirebaseUser);
        when(mockFirebaseUser.isEmailVerified).thenReturn(true);
        setUpFirestore();
        // act
        await dataSource.sendEmailVerification();
        // assert
        final captured = verify(mockDocumentReference.setData(captureAny,
                merge: anyNamed('merge')))
            .captured
            .first as Map<String, dynamic>;

        expect(captured, containsPair('uid', mockFirebaseUser.uid));
        expect(captured, containsPair('email', mockFirebaseUser.email));
        expect(captured, containsPair('photoUrl', mockFirebaseUser.photoUrl));
        expect(captured,
            containsPair('displayName', mockFirebaseUser.displayName));
        expect(captured,
            containsPair('isEmailVerified', mockFirebaseUser.isEmailVerified));
      },
    );
    test(
      "should sendEmailVerification if logged in and email not verified",
      () async {
        // arrange
        when(mockFirebaseAuth.currentUser())
            .thenAnswer((_) async => mockFirebaseUser);
        when(mockFirebaseUser.isEmailVerified).thenReturn(false);
        setUpFirestore();
        // act
        await dataSource.sendEmailVerification();
        // assert
        verify(mockFirebaseUser.sendEmailVerification());
      },
    );
  });

  group('setUserData', () {
    test(
      "should merge any data",
      () async {
        // arrange
        setUpFirestore();
        // act
        await dataSource.setUserData(tAppUserModel);
        // assert
        verify(mockFirestore.collection('users'));
        verify(mockCollectionReference.document(tAppUserModel.uid));
        verify(
            mockDocumentReference.setData(tAppUserModel.toJson(), merge: true));
      },
    );
  });

  group('signIn', () {
    test(
      "should login if correct",
      () async {
        // arrange
        final mockAuthResult = MockAuthResult();
        setUpFirestore();
        when(mockFirebaseAuth.signInWithEmailAndPassword(
          email: anyNamed('email'),
          password: anyNamed('password'),
        )).thenAnswer((_) async => mockAuthResult);
        when(mockAuthResult.user).thenReturn(mockFirebaseUser);
        // act
        await dataSource.signIn('example@example.com', 'password');
        // assert
        verify(mockFirebaseAuth.signInWithEmailAndPassword(
          email: 'example@example.com',
          password: 'password',
        ));
      },
    );

    test(
      "should update data if correct",
      () async {
        // arrange
        final mockAuthResult = MockAuthResult();
        setUpFirestore();
        when(mockFirebaseAuth.signInWithEmailAndPassword(
          email: anyNamed('email'),
          password: anyNamed('password'),
        )).thenAnswer((_) async => mockAuthResult);
        when(mockAuthResult.user).thenReturn(mockFirebaseUser);
        // act
        await dataSource.signIn('example@example.com', 'password');
        // assert
        final captured = verify(mockDocumentReference.setData(captureAny,
                merge: anyNamed('merge')))
            .captured
            .first as Map<String, dynamic>;

        expect(captured, containsPair('uid', mockFirebaseUser.uid));
        expect(captured, containsPair('email', mockFirebaseUser.email));
        expect(captured, containsPair('photoUrl', mockFirebaseUser.photoUrl));
        expect(captured,
            containsPair('displayName', mockFirebaseUser.displayName));
        expect(captured,
            containsPair('isEmailVerified', mockFirebaseUser.isEmailVerified));
      },
    );
  });

  group('signUp', () {
    test(
      "should signUp if correct",
      () async {
        // arrange
        final mockAuthResult = MockAuthResult();
        setUpFirestore();
        when(mockFirebaseAuth.createUserWithEmailAndPassword(
          email: anyNamed('email'),
          password: anyNamed('password'),
        )).thenAnswer((_) async => mockAuthResult);
        when(mockAuthResult.user).thenReturn(mockFirebaseUser);
        // act
        await dataSource.signUp('example@example.com', 'password');
        // assert
        verify(mockFirebaseAuth.createUserWithEmailAndPassword(
          email: 'example@example.com',
          password: 'password',
        ));
      },
    );

    test(
      "should sendEmailVerification if correct",
      () async {
        // arrange
        final mockAuthResult = MockAuthResult();
        setUpFirestore();
        when(mockFirebaseAuth.createUserWithEmailAndPassword(
          email: anyNamed('email'),
          password: anyNamed('password'),
        )).thenAnswer((_) async => mockAuthResult);
        when(mockAuthResult.user).thenReturn(mockFirebaseUser);
        // act
        await dataSource.signUp('example@example.com', 'password');
        // assert
        verify(mockFirebaseUser.sendEmailVerification());
      },
    );

    test(
      "should initialize data if correct",
      () async {
        // arrange
        final mockAuthResult = MockAuthResult();
        setUpFirestore();
        when(mockFirebaseAuth.createUserWithEmailAndPassword(
          email: anyNamed('email'),
          password: anyNamed('password'),
        )).thenAnswer((_) async => mockAuthResult);
        when(mockAuthResult.user).thenReturn(mockFirebaseUser);
        // act
        await dataSource.signUp('example@example.com', 'password');
        // assert
        final captured = verify(mockDocumentReference.setData(captureAny))
            .captured
            .first as Map<String, dynamic>;

        expect(captured, containsPair('uid', mockFirebaseUser.uid));
        expect(captured, containsPair('email', mockFirebaseUser.email));
        expect(captured, containsPair('photoUrl', mockFirebaseUser.photoUrl));
        expect(captured,
            containsPair('displayName', mockFirebaseUser.displayName));
        expect(captured,
            containsPair('isEmailVerified', mockFirebaseUser.isEmailVerified));
        expect(captured, containsPair('isAdmin', false));
      },
    );
  });
}
