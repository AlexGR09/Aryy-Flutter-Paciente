part of './paciente_bloc.dart';

// It helps to rebuild/notify UI components in response to a state change.
// Since Equatable is part of bloc system, you can use Equatable anywhere that a bloc is required when working with thsi arch
abstract class PacienteEvent extends Equatable {
  const PacienteEvent();
  @override
  List<Object> get props => [];
}

// Events only support the same type of event, therefore it inherences from PacienteEvent
class AryyChangeEvent extends PacienteEvent {
  final bool isSessionActive;
  // override props (the ones from abstract class) in order to identiy event classes
  const AryyChangeEvent(this.isSessionActive);
  @override
  // isSessionActive will be identified in broadcasted events
  List<Object> get props => [isSessionActive];
}

abstract class AuthEvent extends Equatable {
  final bool isSessionActive;
  const AuthEvent({required this.isSessionActive});
  @override
  // isSessionActive will be identified in broadcasted events
  List<Object> get props => [isSessionActive];
}

// class LoginEvent extends AuthEvent {}
// class LogoutEvent extends AuthEvent {}

class LoginEvent extends AuthEvent {
  const LoginEvent() : super(isSessionActive: true);
}

class LogoutEvent extends AuthEvent {
  const LogoutEvent() : super(isSessionActive: false);
}

abstract class AuthState {}

class UnAuthenticatedState extends AuthState {}

class AuthenticatedState extends AuthState {}
