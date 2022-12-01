import 'aryy_auth.dart';

// 3. Aryy auth through api connections

class AryyAuthAPI {
  void login(String? email, String? password) async {
    AryyAuth.instance.loginWithCredentials(email: email, password: password);
  }
}
