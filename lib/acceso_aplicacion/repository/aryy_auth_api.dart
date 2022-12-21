import '../../flutter_flow/flutter_flow_util.dart';
import '../model/aryy_user.dart';
import '../model/aryy_user_signin.dart';
import './aryy_api.dart';
import 'aryy_auth.dart';

// 3. Aryy auth through api connections

class AryyAuthAPI {
  // - Log in
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

  // - Sign in
  Future<AryyUserSignedin?> signinWithCredentialsUser(
      {required String email,
      required String password,
      required String passwordConfirmation,
      required String countryCode,
      required int phoneNumber}) async {
    return await AryyApi.singinUser(
            email: email,
            password: password,
            passwordConfirmation: passwordConfirmation,
            countryCode: '',
            phoneNumber: 0)
        .then((connection) {
      if (connection.succeeded) {
        final resultado =
            getJsonField(connection.jsonBody, r'''$[*]''').toList();
        AryyAuth.instance.AccessToken = resultado[2];
        print("accesstoken: ${AryyAuth.instance.AccessToken}");
        var casa = 1;
        return AryyUserSignedin.fromJson(json: resultado[0]);
      }
      return null;
    });
  }
}
