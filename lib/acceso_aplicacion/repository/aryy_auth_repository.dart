import '../model/aryyUser.dart';
import './aryy_auth_api.dart';

// 4. All authentication repositories management

// Aryy auth connection
class AryyAuthRepository {
  // == Log in
  final AryyAuthAPI _aryyAuthAPI = AryyAuthAPI();
  Future<AryyUser?> loginWithAryy(
      {required String email, required String password}) async {
    return await _aryyAuthAPI
        .loginWithCredentials(email: email, password: password)
        .then((aryyUser) {
      return aryyUser;
    });
  }
  // i.e.
  // Future< loginWithFirebase() >
  // Future< loginWithFacebook() >
  // Future< loginWithGoogle() >

  // == Sign in
  Future<AryyUser?> signinWithAryy(
      {required String email,
      required String password,
      required String passwordConfirmation}) async {
    return await _aryyAuthAPI
        .signinWithCredentials(
            email: email,
            password: password,
            passwordConfirmation: passwordConfirmation)
        .then((aryyUser) {
      return aryyUser;
    });
  }
  // i.e.
  // Future< signinWithFirebase() >
  // Future< signinWithFacebook() >
  // Future< signinWithGoogle() >
}
