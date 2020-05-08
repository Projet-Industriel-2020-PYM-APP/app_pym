import 'package:app_pym/domain/usecases/authentication/forgot_password.dart';
import 'package:app_pym/domain/usecases/authentication/get_app_user.dart';
import 'package:app_pym/domain/usecases/authentication/send_email_confirmation.dart';
import 'package:app_pym/domain/usecases/authentication/signin.dart';
import 'package:app_pym/domain/usecases/authentication/signout.dart';
import 'package:app_pym/domain/usecases/authentication/signup.dart';
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
@RegisterAs(AuthSignIn)
@injectable
class MockFirebaseAuthSignIn extends Mock implements AuthSignIn {}

@test
@RegisterAs(AuthSignUp)
@injectable
class MockFirebaseAuthSignUp extends Mock implements AuthSignUp {}

@test
@RegisterAs(AuthSignOut)
@injectable
class MockFirebaseAuthSignOut extends Mock implements AuthSignOut {}
