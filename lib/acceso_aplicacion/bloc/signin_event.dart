part of './signin_bloc.dart';

// Events  only support the same type of event, therefore it inherences from SigninEvent
class SigninEvent extends AuthEvent {
  SigninEvent(
      {required String email,
      required String password,
      required String passwordConfirmation}) {
    // override props (the ones from abstract class) in order to identiy event classes
    AryyAuthRepository()
        .signinWithAryy(
            email: email,
            password: password,
            passwordConfirmation: passwordConfirmation)
        .then((user) {
      if (user?.name != null) {
        super.authentication = Authentication.authenticated;
      } else {
        super.authentication = Authentication.unauthenticated;
      }
    });
  }
}
