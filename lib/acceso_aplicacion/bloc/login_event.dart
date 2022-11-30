part of './login_bloc.dart';

// It helps to rebuild/notify UI components in response to a state change.
// Since Equatable is part of bloc system, you can use Equatable anywhere that a bloc is required when working with thsi arch
abstract class AuthEvent extends Equatable {
  // AuthRepository will manage all Aryy authentication options
  // final auth = AuthRepository();
  bool isSessionActive = false;
  @override
  // isSessionActive will be identified in broadcasted events
  List<Object> get props => [isSessionActive];
}

// Events  only support the same type of event, therefore it inherences from LoginEvent
class AryyChangeEvent extends AuthEvent {
  // override props (the ones from abstract class) in order to identiy event classes
//  const AryyChangeEvent() : super(isSessionActive: false);
  @override
  // isSessionActive will be identified in broadcasted events
  List<Object> get props => [isSessionActive];
}

class LoginEvent extends AuthEvent {
  LoginEvent({String? email, String? password}) {
    AryyAuth.instance
        .login(email: email, password: password)
        .then((value) => super.isSessionActive = value);
    // Para controlar todos los inicios de sesión después usaremos: AuthRepository
    // auth.loginWithAryy(email, password);
  }
}

class LoginStatusEvent extends AuthEvent {}

// class LogoutEvent extends AuthEvent {
//   const LogoutEvent() : super(isSessionActive: false);
// }

// abstract class AuthState {}
// class UnAuthenticatedState extends AuthState {}
// class AuthenticatedState extends AuthState {}
