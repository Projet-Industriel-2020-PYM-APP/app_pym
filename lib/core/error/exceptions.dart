import 'package:flutter/services.dart';

class CacheException implements Exception {
  final dynamic message;

  CacheException([this.message]);

  @override
  String toString() {
    if (message == null) return "CacheException";
    return "CacheException: $message";
  }
}

class ServerException implements Exception {
  final dynamic message;

  ServerException([this.message]);

  @override
  String toString() {
    if (message == null) return "ServerException";
    return "ServerException: $message";
  }
}

class ConnectivityException implements Exception {
  final dynamic message;

  ConnectivityException([this.message]);

  @override
  String toString() {
    if (message == null) return "ConnectivityException";
    return "ConnectivityException: $message";
  }
}

class PermissionException implements Exception {
  final dynamic message;

  PermissionException([this.message]);

  @override
  String toString() {
    if (message == null) return "PermissionException";
    return "PermissionException: $message";
  }
}

class NotAuthenticatedException implements PlatformException {
  @override
  String get code => "NotAuthenticatedException";

  @override
  dynamic get details => null;

  @override
  String get message => "Veuillez vous authentifier.";
}

class EmailNotVerifiedException implements PlatformException {
  @override
  String get code => "EmailNotVerifiedException";

  @override
  dynamic get details => null;

  @override
  String get message => "Veuillez vous confirmer votre email.";
}
