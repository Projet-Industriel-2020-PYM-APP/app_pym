import 'dart:io';

import 'package:app_pym/core/error/exceptions.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class AuthenticationService {
  /// Return [token] if logged in. Return [null] if not.
  String get token;

  /// Send email reset
  Future<void> forgotPassword(String email);

  /// Send email verification
  Future<void> sendEmailVerification();

  Future<String> signIn(String email, String password);
  void signOut();
  Future<String> signUp(String email, String password);
}

@prod
@LazySingleton(as: AuthenticationService)
class AuthenticationServiceImpl implements AuthenticationService {
  final http.Client client;
  final SharedPreferences prefs;

  AuthenticationServiceImpl({
    @required this.client,
    @required this.prefs,
  });
  @override
  String get token => _token;

  String get _token => prefs.getString('token');

  set _token(String token) => prefs.setString('token', token);

  @override
  Future<void> forgotPassword(String email) async {
    final data = <String, String>{
      'email': email,
    };

    final response = await client.post(
      'https://admin.map-pym.com/auth/forgot_password',
      body: data,
    );

    if (response.statusCode == HttpStatus.ok) {
      return;
    } else {
      throw ServerException(
          'Forget Password Failed : ${response.statusCode}, ${response.reasonPhrase}\n${response.body}');
    }
  }

  @override
  Future<void> sendEmailVerification() async {
    final response = await client.post(
      'https://admin.map-pym.com/api/auth/email_verification',
      headers: {HttpHeaders.authorizationHeader: "Bearer $_token"},
    );

    if (response.statusCode == HttpStatus.ok) {
      return;
    } else {
      throw ServerException(
          'Email Verification Failed : ${response.statusCode}, ${response.reasonPhrase}\n${response.body}');
    }
  }

  @override
  Future<String> signIn(String email, String password) async {
    // Sign out
    _token = null;

    final data = <String, String>{
      'email': email,
      'password': password,
    };
    final response = await client.post(
      'https://admin.map-pym.com/api/auth/login',
      body: data,
    );

    if (response.statusCode == HttpStatus.ok) {
      return _token = response.body;
    } else {
      throw ServerException(
          'Cannot log in : ${response.statusCode}, ${response.reasonPhrase}\n${response.body}');
    }
  }

  @override
  void signOut() {
    client.post(
      'https://admin.map-pym.com/api/auth/logout',
      headers: {HttpHeaders.authorizationHeader: "Bearer $_token"},
    ).catchError((dynamic e) {
      print("CAUGHT $e"); // Ignore errors
    });
    _token = null;
  }

  @override
  Future<String> signUp(String email, String password) async {
    _token = null;
    final data = <String, String>{
      'email': email,
      'password': password,
    };
    final response = await client.post(
      'https://admin.map-pym.com/api/auth/register',
      body: data,
    );

    if (response.statusCode == HttpStatus.ok) {
      return _token = response.body;
    } else {
      throw ServerException(
          'Cannot register : ${response.statusCode}, ${response.reasonPhrase}\n${response.body}');
    }
  }
}
