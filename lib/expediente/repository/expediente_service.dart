import 'package:http/http.dart' as http;

import '../../_aryy_common_components/repository/api/api_manager.dart';

class ExpedienteService {
//---------------------INFORMACION BASICA ------------------------------------------
  static Future<ApiCallResponse> postInfoBasica(
      {String? food_allergy,
      String? drug_allergy,
      String? enviromental_allergy,
      String? weight,
      String? height,
      String? blood_type}) {
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl:
          'https://app.aryymd.com/api/v1/patient/medical_history/basic_information',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      params: {},
      body: '''
{     'bearer_token': 14|rO7zNLwD6TzA4BOLbNjXp9kI81TNwCcaAhtT1R98,
      'food_allergy': food_allergy,
      'drug_allergy': drug_allergy,
      'enviromental_allergy': enviromental_allergy,
      'weight': weight,
      'height':height,
      'blood_type':blood_type,}''',
      bodyType: BodyType.JSON,
      returnBody: true,
      cache: false,
    );
  }

//----------------------------- ANTECEDENTES PATOLOGICOS --------------------------------
  static Future<ApiCallResponse> postAntPatolog(
      {String? previous_surgeries,
      String? blood_transfusions,
      String? diabetes,
      String? heart_diseases,
      String? blood_pressure,
      String? thyroid_diseases,
      String? cancer,
      String? kidney_stones,
      String? hepatitis,
      String? trauma,
      String? respiratory_diseases,
      String? ets,
      String? gastrointestinal_pathologies}) {
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl:
          'https://app.aryymd.com/api/v1/patient/medical_history/pathological_history',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      params: {},
      body: '''
{     'bearer_token': 14|rO7zNLwD6TzA4BOLbNjXp9kI81TNwCcaAhtT1R98,
      'previous_surgeries': previous_surgeries,
      'blood_transfusions': blood_transfusions,
      'diabetes': diabetes,
      'heart_diseases': heart_diseases,
      'blood_pressure':blood_pressure,
      'thyroid_diseases':thyroid_diseases,
      'cancer':cancer,
      'kidney_stones':kidney_stones,
      'hepatitis':hepatitis,
      'trauma':trauma,
      'respiratory_diseases':respiratory_diseases,
      'ets':ets,
      'gastrointestinal_pathologies':gastrointestinal_pathologies,
      }''',
      bodyType: BodyType.JSON,
      returnBody: true,
      cache: false,
    );
  }

//--------------------- ANTECEDENTES NO PATOLOGICOS -------------------------
  static Future<ApiCallResponse> postAntNoPatolog(
      {String? previous_surgeries,
      String? blood_transfusions,
      String? diabetes,
      String? heart_diseases,
      String? blood_pressure,
      String? thyroid_diseases,
      String? cancer,
      String? kidney_stones,
      String? hepatitis,
      String? trauma,
      String? respiratory_diseases,
      String? ets,
      String? gastrointestinal_pathologies}) {
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl:
          'https://app.aryymd.com/api/v1/patient/medical_history/non_pathological_history',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      params: {},
      body: '''
  {    'bearer_token': 14|rO7zNLwD6TzA4BOLbNjXp9kI81TNwCcaAhtT1R98,
      "physical_activity": {
        "type_of_activity": "Atletismo",
        "days_of_the_week": "4 dias"
    },
    "rest_time": {
        "hours_of_sleep": "6 horas",
        "dreams_while_sleeping": "No sé",
        "rest_when_sleeping": "A veces"
    },
    "smoking": {
        "number_of_cigarettes": "N/A",
        "type": "N/A"
    },
    "alcoholim": {
        "weekly_frequency": "N/A",
        "type": "N/A"
    },
    "other_substances": "N/A",
    "diet": "N/A",
    "drug_active": "Ibuprofeno",
    "previous_medication": "N/A"
      }''',
      bodyType: BodyType.JSON,
      returnBody: true,
      cache: false,
    );
  }

//--------------------- ANTECEDENTES HEREDOFAMILIARES -------------------------
  static Future<ApiCallResponse> postAntHeredofamiiares(
      {String? previous_surgeries,
      String? blood_transfusions,
      String? diabetes,
      String? heart_diseases,
      String? blood_pressure,
      String? thyroid_diseases,
      String? cancer,
      String? kidney_stones,
      String? hepatitis,
      String? trauma,
      String? respiratory_diseases,
      String? ets,
      String? gastrointestinal_pathologies}) {
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl:
          'https://app.aryymd.com/api/v1/patient/medical_history/hereditary_background',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      params: {},
      body: '''
  {    'bearer_token': 14|rO7zNLwD6TzA4BOLbNjXp9kI81TNwCcaAhtT1R98,
      "diabetes": {
        "family": "Abulos paterno",
        "type": "Diabetes tipo 1"
    },
    "heart_diseases": {
        "family": "N/A",
        "type": "N/A"
    },
    "blood_pressure": {
        "family": "N/A",
        "type": "N/A"
    },
    "thyroid_diseases": {
        "family": "N/A",
        "type": "N/A"
    },
    "cancer": {
        "family": "N/A",
        "type": "N/A"
    },
    "kidney_stones": {
        "family": "N/A",
        "type": "N/A"
    }
      }''',
      bodyType: BodyType.JSON,
      returnBody: true,
      cache: false,
    );
  }

//------------------------HISTORIAL DE VACUNACION ----------------------------
  static Future<ApiCallResponse> postVacunacion(
      {String? vaccine,
      String? dose,
      String? lote_number,
      String? aplication_date}) {
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl:
          'https://app.aryymd.com/api/v1/patient/medical_history/vaccination_history',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer 7|a8oxt4P0AMzwfPHpvWtdmtCGHLm2k7t23mGW1Ecx',
      },
      params: {},
      body: '''
{     
      'vaccine': vaccine,
      'dose': dose,
      'lote_number': lote_number,
      'aplication_date': aplication_date,
}''',
      bodyType: BodyType.JSON,
      returnBody: true,
      cache: false,
    );
  }

  /*Future<String> postVacunacion(String vaccine, String dose, String lote_number,
      String aplication_date) async {
    //try {
    var url = Uri.parse(
        'https://app.aryymd.com/api/v1/patient/medical_history/vaccination_history');
    var response = await http.post(url,

        //AQUI IRA NUESTRO TOKEN
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        }, body: {
      'vaccine': vaccine,
      'dose': dose,
      'lote_number': lote_number,
      'aplication_date': aplication_date,
    }).then((value) => print("value: {$value}"));*/

  /*if (response.statusCode == 200) {
      print(response.body.runtimeType);
    }
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');*/
  //print(await http.read(url));
  /*} catch (e) {
      print(e);
    }*/

}
