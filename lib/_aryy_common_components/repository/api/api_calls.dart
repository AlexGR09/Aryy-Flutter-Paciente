import './api_manager.dart';
export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

// class GetBarraBusquedaCall {
//   static Future<ApiCallResponse> call({
//     String? search = '',
//     String? value = '',
//   }) {
//     return ApiManager.instance.makeApiCall(
//       callName: 'GetBarraBusqueda',
//       apiUrl: 'https://app.aryymd.com/api/v1/searchphy',
//       callType: ApiCallType.GET,
//       headers: {},
//       params: {
//         'search': search,
//         'value': value,
//       },
//       returnBody: true,
//     );
//   }
// }

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
