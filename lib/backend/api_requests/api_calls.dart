import 'api_manager.dart';
export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetBarraBusquedaCall {
  static Future<ApiCallResponse> call({
    String? search = '',
    String? mod = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'GetBarraBusqueda',
      apiUrl: 'http://localhost:8000/api/searchmed',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'search': search,
        'mod': mod,
      },
      returnBody: true,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}
