part of './login_bloc.dart';

// Events  only support the same type of event, therefore it inherences from LoginEvent
class LoginEvent extends AuthEvent {
  LoginEvent({required String email, required String password}) {
    // override props (the ones from abstract class) in order to identiy event classes
    AryyAuthRepository()
        .loginWithAryy(email: email, password: password)
        .then((user) {
      if (user?.name != null) {
        super.authentication = Authentication.authenticated;
      } else {
        super.authentication = Authentication.unauthenticated;
      }
    });
  }
}

class AuthenticationStatusEvent extends AuthEvent {}

// class LogoutEvent extends AuthEvent {
//   const LogoutEvent() : super(isSessionActive: false);
// }

// abstract class AuthState {}
// class UnAuthenticatedState extends AuthState {}
// class AuthenticatedState extends AuthState {}
