import '../../_aryy_common_components/repository/api/api_manager.dart';

class GetBarraBusquedaCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'IniciarSesion',
      apiUrl: 'https://app.aryymd.com/api/v1/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'email': email,
        'password': password,
      },
      returnBody: true,
    );
  }
}
