import 'package:aryy_front/acceso_aplicacion/model/aryyUser.dart';

import 'aryy_auth_api.dart';

// 4. All authentication repositories management

class AryyAuthRepository {
  // Aryy auth connection
  final AryyAuthAPI _aryyAuthAPI = AryyAuthAPI();
  Future<AryyUser?> loginWithAryy() async {
    return await _aryyAuthAPI
        .loginWithCredentials("max", "password")
        .then((aryyUser) {
      return aryyUser;
    });
  }

  // i.e.
  // Future<AryyUser?> loginFirebase() => _aryyAuthAPI.login("max", "password");
  // Future<AryyUser?> loginFacebook() => _aryyAuthAPI.login("max", "password");
  // Future<AryyUser?> loginGoogle() => _aryyAuthAPI.login("max", "password");
}
