import '../model/aryyUser.dart';
import './aryy_auth_api.dart';

// 4. All authentication repositories management

class AryyAuthRepository {
  // Aryy auth connection
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
  // Future<AryyUser?> loginWithFirebase() => _aryyAuthAPI.login("max", "password");
  // Future<AryyUser?> loginWithFacebook() => _aryyAuthAPI.login("max", "password");
  // Future<AryyUser?> loginWithGoogle() => _aryyAuthAPI.login("max", "password");
}
