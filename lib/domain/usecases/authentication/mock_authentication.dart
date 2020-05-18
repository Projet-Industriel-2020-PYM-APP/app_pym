import 'package:app_pym/domain/usecases/authentication/forgot_password.dart';
import 'package:app_pym/domain/usecases/authentication/get_app_user.dart';
import 'package:app_pym/domain/usecases/authentication/send_email_confirmation.dart';
import 'package:app_pym/domain/usecases/authentication/signin.dart';
import 'package:app_pym/domain/usecases/authentication/signout.dart';
import 'package:app_pym/domain/usecases/authentication/signup.dart';
import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';

@test
@Injectable(as: ForgotPassword)
class MockForgotPassword extends Mock implements ForgotPassword {}

@test
@Injectable(as: GetAppUser)
class MockGetAppUser extends Mock implements GetAppUser {}

@test
@Injectable(as: SendEmailConfirmation)
class MockSendEmailConfirmation extends Mock implements SendEmailConfirmation {}

@test
@Injectable(as: AuthSignIn)
class MockFirebaseAuthSignIn extends Mock implements AuthSignIn {}

@test
@Injectable(as: AuthSignUp)
class MockFirebaseAuthSignUp extends Mock implements AuthSignUp {}

@test
@Injectable(as: AuthSignOut)
class MockFirebaseAuthSignOut extends Mock implements AuthSignOut {}
