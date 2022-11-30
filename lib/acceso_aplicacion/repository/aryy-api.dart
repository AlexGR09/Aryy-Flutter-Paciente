import 'dart:convert';
import '../../_aryy_common_components/repository/api/api_manager.dart';
export '../../_aryy_common_components/repository/api/api_manager.dart'
    show ApiCallResponse;

class AryyApi {
  static Future<ApiCallResponse> login({String? email, String? password}) {
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
}''',
      bodyType: BodyType.JSON,
      returnBody: true,
      cache: false,
    );
  }
}
