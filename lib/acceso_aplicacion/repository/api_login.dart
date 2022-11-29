import 'dart:convert';
import '../../_aryy_common_components/repository/api/api_manager.dart';
export '../../_aryy_common_components/repository/api/api_manager.dart'
    show ApiCallResponse;

class ApiLogin {
  static Future<ApiCallResponse> call({String? email, String? password}) {
    Map<String, String> body = <String, String>{
      'email': 'max@gmail.com', // email
      'password': 'password' // password
    };

    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl: 'https://app.aryymd.com/api/v1/login',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      params: {},
      body: json.encode(body),
      bodyType: BodyType.JSON,
      returnBody: true,
      cache: false,
    );
  }
}
