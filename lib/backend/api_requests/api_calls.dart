import 'dart:convert';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

//--------------------------------------------------------------------------------
//-------------------------- CATALOGOS EDITAR PERFIL...........................................
//--------------------------------------------------------------------------------
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

//--------------------------------------------------------------------------------------
//-------------------------------- HISTORIAL DE VACUNACION -----------------------------
class VaccinationCall {
  static Future<ApiCallResponse> call({
    String? vaccine = '',
    String? dose = '',
    String? lotNumber = '',
    String? applicationDate = '',
  }) {
    final body = '''
{
  "vaccine":"${vaccine}",
  "dose": "${dose}",
  "lot_number":"${lotNumber}",
  "application_date": "${applicationDate}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'vaccination',
      apiUrl:
          'https://app.aryymd.com/api/v1/patient/medical_history/vaccination_history',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer 7|a8oxt4P0AMzwfPHpvWtdmtCGHLm2k7t23mGW1Ecx',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      cache: false,
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

//--------------------------------------------------------------------------------------------------------------
//----------------------------------- ANTECEDENTES PATOLOGICOS -------------------------------------------------
//--------------------------------------------------------------------------------------------------------------
class PatologicosCall {
  static Future<ApiCallResponse> call({
    String? previousSurgeries = '',
    String? bloodTransfusions = '',
    String? diabetes = '',
    String? heartDiseases = '',
    String? bloodPressure = '',
    String? thyroidDiseases = '',
    String? cancer = '',
    String? kidneyStones = '',
    String? hepatitis = '',
    String? trauma = '',
    String? respiratoryDiseases = '',
    String? ets = '',
    String? gastrointestinalPathologies = '',
  }) {
    final body = '''
{
  "previous_surgeries":"${previousSurgeries}",
  "blood_transfusions":"${bloodTransfusions}",
  "diabetes":"${diabetes}",
  "heart_diseases":"${heartDiseases}",
  "blood_pressure":"${bloodPressure}",
  "thyroid_diseases":"${thyroidDiseases}",
  "cancer":"${cancer}",
  "kidney_stones": "${kidneyStones}",
  "hepatitis":"${hepatitis}",
  "trauma":"${trauma}",
  "respiratory_diseases":"${respiratoryDiseases}",
  "ets":"${ets}",
  "gastrointestinal_pathologies":"${gastrointestinalPathologies}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'patologicos',
      apiUrl:
          'https://app.aryymd.com/api/v1/patient/medical_history/pathological_background',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer 7|a8oxt4P0AMzwfPHpvWtdmtCGHLm2k7t23mGW1Ecx',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      cache: false,
    );
  }
}

//--------------------------------------------------------------------------------------------------
//-------------------------------- INFORMACION BASICA ----------------------------------------------
//--------------------------------------------------------------------------------------------------
class TiposangreCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'tiposangre',
      apiUrl: 'https://app.aryymd.com/api/v1/patient/blood_type',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer 3|55nOqfa8DFth45g7S7GKHiTQBuKrTyTXP7AKZ5Xb',
      },
      params: {},
      returnBody: true,
      cache: false,
    );
  }

  static dynamic nombre(dynamic response) => getJsonField(
        response,
        r'''$.data..name''',
        true,
      );
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
