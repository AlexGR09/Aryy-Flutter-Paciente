import '../../flutter_flow/flutter_flow_util.dart';
import '../model/aryyUser.dart';
import './aryy_api.dart';
import 'aryy_auth.dart';

// 3. Aryy auth through api connections

class AryyAuthAPI {
  Future<AryyUser?> loginWithCredentials(
      {required String email, required String password}) async {
    return await AryyApi.login(
      email: email,
      password: password,
    ).then((connection) {
      if (connection.succeeded) {
        final resultado =
            getJsonField(connection.jsonBody, r'''$[*]''').toList();
        AryyAuth.instance.AccessToken = resultado[2];
        // para pruebas temporales:
        print("accesstoken: ${AryyAuth.instance.AccessToken}");
        return AryyUser.fromJson(json: resultado[0]);
      }
      return null;
    });
  }
}
