import 'dart:io';

import 'package:app_pym/core/error/exceptions.dart';
import 'package:app_pym/data/services/authentication_service.dart';
import 'package:app_pym/injection_container.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart' show Environment;
import 'package:mockito/mockito.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  AuthenticationService service;
  SharedPreferences mockPrefs;
  http.Client mockHttpClient;

  init(env: Environment.test);

  setUp(() {
    mockHttpClient = sl<http.Client>();
    mockPrefs = sl<SharedPreferences>();
    service = AuthenticationServiceImpl(
      client: mockHttpClient,
      prefs: mockPrefs,
    );
  });

  void setUpMockHttpClientSuccess200() {
    when(mockHttpClient.post(
      'https://admin.map-pym.com/auth/forgot_password',
      body: anyNamed('body'),
    )).thenAnswer((_) async => http.Response('Done.', HttpStatus.ok));
    when(mockHttpClient.post(
      'https://admin.map-pym.com/auth/email_verification',
      headers: anyNamed('headers'),
    )).thenAnswer((_) async => http.Response('Done.', HttpStatus.ok));
    when(mockHttpClient.post(
      'https://admin.map-pym.com/auth/token',
      body: anyNamed('body'),
    )).thenAnswer((_) async => http.Response('token', HttpStatus.ok));
    when(mockHttpClient.post(
      'https://admin.map-pym.com/auth/signout',
      headers: anyNamed('headers'),
    )).thenAnswer((_) async => http.Response('Done.', HttpStatus.ok));
    when(mockHttpClient.post(
      'https://admin.map-pym.com/auth/register',
      body: anyNamed('body'),
    )).thenAnswer((_) async => http.Response('token', HttpStatus.ok));
  }

  void setUpMockHttpClientFailure404() {
    when(mockHttpClient.get(any))
        .thenAnswer((_) async => http.Response('Something went wrong', 404));
    when(
      mockHttpClient.get(any, headers: anyNamed('headers')),
    ).thenAnswer((_) async => http.Response('Something went wrong', 404));
    when(mockHttpClient.post(
      any,
      headers: anyNamed('headers'),
    )).thenAnswer((_) async => http.Response('Something went wrong', 404));
    when(mockHttpClient.post(
      any,
      body: anyNamed('body'),
    )).thenAnswer((_) async => http.Response('Something went wrong', 404));
    when(
      mockHttpClient.post(
        any,
        headers: anyNamed('headers'),
        body: anyNamed('body'),
      ),
    ).thenAnswer((_) async => http.Response('Something went wrong', 404));
  }

  group('get token', () {
    test(
      "should get token from Shared Preferences",
      () async {
        // arrange
        when(mockPrefs.getString('token')).thenReturn('token');
        // act
        final result = service.token;
        // assert
        verify(mockPrefs.getString('token'));
        expect(result, equals('token'));
      },
    );
  });

  group('forgotPassword', () {
    test(
      "should perform a POST request on a URL",
      () async {
        // arrange
        setUpMockHttpClientSuccess200();
        // act
        await service.forgotPassword('email');
        // assert
        verify(mockHttpClient.post(
          'https://admin.map-pym.com/auth/forgot_password',
          body: {'email': 'email'},
        ));
      },
    );

    test(
      'should throw a ServerException when the response code is 404 or other',
      () async {
        // arrange
        setUpMockHttpClientFailure404();
        // act
        final call = service.forgotPassword;
        // assert
        expect(() => call('email'), throwsA(isA<ServerException>()));
      },
    );
  });

  group('sendEmailVerification', () {
    test(
      "should perform a POST request on a URL",
      () async {
        // arrange
        setUpMockHttpClientSuccess200();
        when(mockPrefs.getString('token')).thenReturn('token');
        // act
        await service.sendEmailVerification();
        // assert
        verify(mockHttpClient.post(
          'https://admin.map-pym.com/auth/email_verification',
          headers: {HttpHeaders.authorizationHeader: "Bearer token"},
        ));
      },
    );

    test(
      'should throw a ServerException when the response code is 404 or other',
      () async {
        // arrange
        setUpMockHttpClientFailure404();
        // act
        final call = service.sendEmailVerification;
        // assert
        expect(call, throwsA(isA<ServerException>()));
      },
    );
  });

  group('signIn', () {
    test(
      "should clear any saved token",
      () async {
        // arrange
        setUpMockHttpClientSuccess200();
        // act
        await service.signIn('email', 'password');
        // assert
        verify(mockPrefs.setString('token', null));
      },
    );

    test(
      "should perform a POST request on a URL",
      () async {
        // arrange
        setUpMockHttpClientSuccess200();
        when(mockPrefs.getString('token')).thenReturn('token');
        // act
        await service.signIn('email', 'password');
        // assert
        verify(mockHttpClient.post(
          'https://admin.map-pym.com/auth/token',
          body: {
            'email': 'email',
            'password': 'password',
          },
        ));
      },
    );

    test(
      'should return the token with response code HttpStatus.ok (success)',
      () async {
        // arrange
        setUpMockHttpClientSuccess200();
        String token;
        when(mockPrefs.setString('token', any)).thenAnswer((invoc) async {
          token = invoc.positionalArguments[1] as String;
          return true;
        });
        when(mockPrefs.getString('token')).thenReturn(token);
        // act
        final result = await service.signIn('email', 'password');
        // assert
        expect(result, 'token');
      },
    );

    test(
      'should throw a ServerException when the response code is 404 or other',
      () async {
        // arrange
        setUpMockHttpClientFailure404();
        // act
        final call = service.signIn;
        // assert
        expect(
            () => call('email', 'password'), throwsA(isA<ServerException>()));
      },
    );
  });

  group('signOut', () {
    test(
      "should perform a POST request on a URL",
      () async {
        // arrange
        setUpMockHttpClientSuccess200();
        when(mockPrefs.getString('token')).thenReturn('token');
        // act
        service.signOut();
        // assert
        verify(mockHttpClient.post(
          'https://admin.map-pym.com/auth/signout',
          headers: {HttpHeaders.authorizationHeader: "Bearer token"},
        ));
      },
    );

    test(
      "should catch any error",
      () async {
        // arrange
        when(mockPrefs.getString('token')).thenReturn('token');
        when(mockHttpClient.post(any, headers: anyNamed('headers'))).thenAnswer(
            (_) async => throw const SocketException('Connection closed.'));
        // act
        service.signOut();
      },
    );

    test(
      'should clear any existing token',
      () async {
        // arrange
        setUpMockHttpClientSuccess200();
        when(mockPrefs.getString('token')).thenReturn('token');
        // act
        service.signOut();
        // assert
        verify(mockPrefs.setString('token', null));
      },
    );
  });

  group('signUp', () {
    test(
      "should clear any saved token",
      () async {
        // arrange
        setUpMockHttpClientSuccess200();
        // act
        await service.signUp('email', 'password');
        // assert
        verify(mockPrefs.setString('token', null));
      },
    );

    test(
      "should perform a POST request on a URL",
      () async {
        // arrange
        setUpMockHttpClientSuccess200();
        when(mockPrefs.getString('token')).thenReturn('token');
        // act
        await service.signUp('email', 'password');
        // assert
        verify(mockHttpClient.post(
          'https://admin.map-pym.com/auth/register',
          body: {
            'email': 'email',
            'password': 'password',
          },
        ));
      },
    );

    test(
      'should return the token with response code HttpStatus.ok (success)',
      () async {
        // arrange
        setUpMockHttpClientSuccess200();
        String token;
        when(mockPrefs.setString('token', any)).thenAnswer((invoc) async {
          token = invoc.positionalArguments[1] as String;
          return true;
        });
        when(mockPrefs.getString('token')).thenReturn(token);
        // act
        final result = await service.signIn('email', 'password');
        // assert
        expect(result, 'token');
      },
    );

    test(
      'should throw a ServerException when the response code is 404 or other',
      () async {
        // arrange
        setUpMockHttpClientFailure404();
        // act
        final call = service.signUp;
        // assert
        expect(
            () => call('email', 'password'), throwsA(isA<ServerException>()));
      },
    );
  });
}
