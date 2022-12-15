part of './authentication_bloc.dart';

class SigninEvent extends AuthEvent {}

// Custom

class AppStarted extends AuthEvent {
  @override
  String toString() => 'AppStarted';
}

class LoggedIn extends AuthEvent {
  final String token;

  LoggedIn({required this.token}) : super([token]);

  @override
  String toString() => 'LoggedIn { token: $token }';
}

class LoggedOut extends AuthEvent {
  @override
  String toString() => 'LoggedOut';
}
