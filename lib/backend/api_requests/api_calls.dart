import 'dart:convert';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class CountryCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'country',
      apiUrl: 'https://app.aryymd.com/api/v1/patient/country',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer 7|a8oxt4P0AMzwfPHpvWtdmtCGHLm2k7t23mGW1Ecx',
      },
      params: {},
      returnBody: true,
      cache: false,
    );
  }

  static dynamic countryname(dynamic response) => getJsonField(
        response,
        r'''$..name''',
        true,
      );
}

class StatesCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'states',
      apiUrl: 'https://app.aryymd.com/api/v1/patient/cities_states',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer 7|a8oxt4P0AMzwfPHpvWtdmtCGHLm2k7t23mGW1Ecx',
      },
      params: {
        'state_id': "10",
      },
      returnBody: true,
      cache: false,
    );
  }

  static dynamic statename(dynamic response) => getJsonField(
        response,
        r'''$..data..state.name''',
        true,
      );
}

class CitiesCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'cities',
      apiUrl: 'https://app.aryymd.com/api/v1/patient/cities_states',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer 7|a8oxt4P0AMzwfPHpvWtdmtCGHLm2k7t23mGW1Ecx',
      },
      params: {
        'state_id': "10",
      },
      returnBody: true,
      cache: false,
    );
  }

  static dynamic citiesname(dynamic response) => getJsonField(
        response,
        r'''$..data..name''',
        true,
      );
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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
