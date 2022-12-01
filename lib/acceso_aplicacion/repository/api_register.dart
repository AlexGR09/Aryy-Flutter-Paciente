import 'dart:convert';
import '../../_aryy_common_components/repository/api/api_manager.dart';
export '../../_aryy_common_components/repository/api/api_manager.dart'
    show ApiCallResponse;

class Api {
  static Future<ApiCallResponse> login(
      {String? email, String? password, String? password_comfirmation}) {
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl: 'https://app.aryymd.com/api/v1/login',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      params: {},
      body: '''
{
  "email": "max@gmail.com",
  "password": "password"
  "password_confirmation" : "password",
  type_user" : "Patient"
  
}''',
      bodyType: BodyType.JSON,
      returnBody: true,
      cache: false,
    );
  }
}
