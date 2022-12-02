part of './login_bloc.dart';

// It helps to rebuild/notify UI components in response to a state change.
// Since Equatable is part of bloc system, you can use Equatable anywhere that a bloc is required when working with thsi arch
abstract class AuthEvent extends Equatable {
  // AuthRepository will manage all Aryy authentication options
  // final auth = AuthRepository();
  Authentication authentication = Authentication.uninitialized;
  @override
  // isSessionActive will be identified in broadcasted events
  List<Object> get props => [authentication];
}

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
