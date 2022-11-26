import '../../_aryy_common_components/repository/api/api_manager.dart';

class GetBarraBusquedaCall {
  static Future<ApiCallResponse> call({
    String? search = '',
    String? value = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GetBarraBusqueda',
      apiUrl: 'https://app.aryymd.com/api/v1/searchphy',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'search': search,
        'value': value,
      },
      returnBody: true,
    );
  }
}
