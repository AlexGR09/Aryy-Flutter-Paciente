import '../model/aryyUser.dart';
import 'aryy_auth.dart';

// 3. Aryy auth through api connections

class AryyAuthAPI {
  Future<AryyUser> login(String? email, String? password) async {
    return await AryyAuth.instance
        .loginWithCredentials(email: email, password: password);
  }
}
