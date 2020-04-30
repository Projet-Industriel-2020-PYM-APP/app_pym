import 'package:app_pym/domain/usecases/firebase_auth/forgot_password.dart';
import 'package:app_pym/domain/usecases/firebase_auth/get_app_user.dart';
import 'package:app_pym/domain/usecases/firebase_auth/send_email_confirmation.dart';
import 'package:app_pym/domain/usecases/firebase_auth/set_user_data.dart';
import 'package:app_pym/domain/usecases/firebase_auth/signin.dart';
import 'package:app_pym/domain/usecases/firebase_auth/signout.dart';
import 'package:app_pym/domain/usecases/firebase_auth/signup.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@test
@RegisterAs(ForgotPassword)
@injectable
class MockForgotPassword extends Mock implements ForgotPassword {}

@test
@RegisterAs(GetAppUser)
@injectable
class MockGetAppUser extends Mock implements GetAppUser {}

@test
@RegisterAs(SendEmailConfirmation)
@injectable
class MockSendEmailConfirmation extends Mock implements SendEmailConfirmation {}

@test
@RegisterAs(SetUserData)
@injectable
class MockSetUserData extends Mock implements SetUserData {}

@test
@RegisterAs(FirebaseAuthSignIn)
@injectable
class MockFirebaseAuthSignIn extends Mock implements FirebaseAuthSignIn {}

@test
@RegisterAs(FirebaseAuthSignUp)
@injectable
class MockFirebaseAuthSignUp extends Mock implements FirebaseAuthSignUp {}

@test
@RegisterAs(FirebaseAuthSignOut)
@injectable
class MockFirebaseAuthSignOut extends Mock implements FirebaseAuthSignOut {}
