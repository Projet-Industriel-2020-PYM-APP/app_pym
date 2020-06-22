import 'package:flutter/material.dart';
import 'package:app_pym/presentation/blocs/authentication/authentication/authentication_bloc.dart';
import 'package:app_pym/presentation/blocs/authentication/login/login_bloc.dart';
import 'package:app_pym/presentation/widgets/firebase_auth/create_account_button.dart';
import 'package:app_pym/presentation/widgets/firebase_auth/forgot_password_button.dart';
import 'package:app_pym/presentation/widgets/firebase_auth/login_button.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  LoginBloc _loginBloc;

  bool get isPopulated =>
      _emailController.text.isNotEmpty && _passwordController.text.isNotEmpty;

  bool isLoginButtonEnabled(LoginState state) {
    return state.isFormValid && isPopulated && !state.isSubmitting;
  }

  @override
  void initState() {
    super.initState();
    _loginBloc = context.bloc<LoginBloc>();
    _emailController.addListener(_onEmailChanged);
    _passwordController.addListener(_onPasswordChanged);
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginBloc, LoginState>(
      listener: (context, state) {
        if (state.isFailure) {
          Scaffold.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Text(state.error.toString()),
                backgroundColor: Colors.red,
              ),
            );
        }
        if (state.isSubmitting) {
          Scaffold.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(
              SnackBar(
                content: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Logging In...'),
                    const CircularProgressIndicator(),
                  ],
                ),
              ),
            );
        }
        if (state.isSuccess) {
          context
              .bloc<AuthenticationBloc>()
              .add(const AuthenticationEvent.refresh());
        }
      },
      child: BlocBuilder<LoginBloc, LoginState>(
        builder: (context, state) {
          return Form(
            child: Scrollbar(
              child: SizedBox(
                width: MediaQuery.of(context).size.height,
                child: ListView(
                  padding: const EdgeInsets.all(20.0),
                  children: <Widget>[
                    Image.asset(
                      'assets/images/graphique/Logo-Pôle Yvon Morandat-original.png',
                      width: 500.0,
                    ),
                    TextFormField(
                      controller: _emailController,
                      decoration: const InputDecoration(
                        icon: Icon(Icons.email),
                        labelText: 'Email',
                      ),
                      autovalidate: true,
                      autocorrect: false,
                      validator: (_) {
                        return !state.isEmailValid ? 'E-mail invalide' : null;
                      },
                    ),
                    TextFormField(
                      controller: _passwordController,
                      decoration: const InputDecoration(
                        icon: Icon(Icons.lock),
                        labelText: 'Mot de passe',
                      ),
                      obscureText: true,
                      autovalidate: true,
                      autocorrect: false,
                      validator: (_) {
                        return !state.isPasswordValid
                            ? 'Requis : une lettre, un chiffre et minimum 8 caractères'
                            : null;
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          ButtonBar(
                            alignment: MainAxisAlignment.end,
                            overflowDirection: VerticalDirection.up,
                            children: [
                              CreateAccountButton(
                                onPressed: isLoginButtonEnabled(state)
                                    ? _onSignUpSubmitted
                                    : null,
                              ),
                              LoginButton(
                                onPressed: isLoginButtonEnabled(state)
                                    ? _onFormSubmitted
                                    : null,
                              ),
                            ],
                          ),
                          const ForgotPasswordButton(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _onEmailChanged() {
    _loginBloc.add(
      LoginEvent.emailChanged(_emailController.text),
    );
  }

  void _onPasswordChanged() {
    _loginBloc.add(
      LoginEvent.passwordChanged(_passwordController.text),
    );
  }

  void _onFormSubmitted() {
    _loginBloc.add(
      LoginEvent.withCredentialsPressed(
        email: _emailController.text,
        password: _passwordController.text,
      ),
    );
  }

  void _onSignUpSubmitted() {
    _loginBloc.add(
      LoginEvent.signUp(
        email: _emailController.text,
        password: _passwordController.text,
      ),
    );
  }
}
