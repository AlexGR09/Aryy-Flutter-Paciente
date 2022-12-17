import 'dart:convert';
import '../../_aryy_common_components/repository/api/api_manager.dart';
export '../../_aryy_common_components/repository/api/api_manager.dart'
    show ApiCallResponse;

//---------------------------- AGREGAR INFORMACIÓN ------------------------------------------
class PostApiHistory {
  static Future<ApiCallResponse> profile_basic({
    required String food_allergy,
    required String drug_allergy,
    required String environmental_allergy,
    required String weight,
    required String height,
    required String blood_type,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'PostApiHistory',
      apiUrl:
          'https://app.aryymd.com/api/v1/patient/medical_history/basic_information',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      params: {},
      body: '''
{
  "food_allergy": "Camarón",
    "drug_allergy": "Amoxilina",
    "environmental_allergy": "polvo",
    "weight": {
        "weight":"60",
        "unit_of_measurement":"kg"
    },
    "height": {
        "height":"1.70",
        "unit_of_measurement":"cm"
    },
    "blood_type": "-O"
}''',
      bodyType: BodyType.JSON,
      returnBody: true,
      cache: false,
    );
  }

  static Future<ApiCallResponse> pathological_history(
      {required String previous_surgeries,
      required String blood_transfusions,
      required String diabetes,
      required String heart_diseases,
      required String blood_pressure,
      required String thyroid_diseases,
      required String cancer,
      required String kidney_stones,
      required String hepatitis,
      required String trauma,
      required String respiratory_diseases,
      required String ets,
      required String gastrointestinal_pathologies}) {
    return ApiManager.instance.makeApiCall(
      callName: 'PostApiHistory',
      apiUrl:
          'https://app.aryymd.com/api/v1/patient/medical_history/pathological_history',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      params: {},
      body: '''
  {
  "previous_surgeries": "N/A",
    "blood_transfusions": "N/A",
    "diabetes": "Tipo 1",
    "heart_diseases": "N/A",
    "blood_pressure": "N/A",
    "thyroid_diseases": "N/A",
    "cancer": "Cáncer de pancreas",
    "kidney_stones": "Si",
    "hepatitis": "Hepatitis A",
    "trauma": "N/A",
    "respiratory_diseases": "N/A",
    "ets": "N/A",
    "gastrointestinal_pathologies": "N/A"
  }''',
      bodyType: BodyType.JSON,
      returnBody: true,
      cache: false,
    );
  }

  static Future<ApiCallResponse> non_pathological_history(
      {required String previous_surgeries,
      required String blood_transfusions,
      required String diabetes,
      required String heart_diseases,
      required String blood_pressure,
      required String thyroid_diseases,
      required String cancer,
      required String kidney_stones,
      required String hepatitis,
      required String trauma,
      required String respiratory_diseases,
      required String ets,
      required String gastrointestinal_pathologies}) {
    return ApiManager.instance.makeApiCall(
      callName: 'PostApiHistory',
      apiUrl:
          'https://app.aryymd.com/api/v1/patient/medical_history/non_pathological_history',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      params: {},
      body: '''
  {
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

  static Future<ApiCallResponse> hereditary_background(
      {required String previous_surgeries,
      required String blood_transfusions,
      required String diabetes,
      required String heart_diseases,
      required String blood_pressure,
      required String thyroid_diseases,
      required String cancer,
      required String kidney_stones,
      required String hepatitis,
      required String trauma,
      required String respiratory_diseases,
      required String ets,
      required String gastrointestinal_pathologies}) {
    return ApiManager.instance.makeApiCall(
      callName: 'PostApiHistory',
      apiUrl:
          'https://app.aryymd.com/api/v1/patient/medical_history/hereditary_background',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      params: {},
      body: '''
  {
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

  static Future<ApiCallResponse> vaccination_history({
    required String vaccine,
    required String dose,
    required String lot_number,
    required String application_date,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'PostApiHistory',
      apiUrl:
          'https://app.aryymd.com/api/v1/patient/medical_history/vaccination_history',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer 3|55nOqfa8DFth45g7S7GKHiTQBuKrTyTXP7AKZ5Xb',
      },
      params: {},
      body: '''
  {
    "vaccine": "Viruela",
    "dose": "2 dosis",
    "lot_number": "A1ER",
    "application_date": "2000-09-08"
  }''',
      bodyType: BodyType.JSON,
      returnBody: true,
      cache: false,
    );
  }

//------------------------------- MOSTRAR INFORMACION --------------------------------
  /*static Future<ApiCallResponse> profile_basic_view({
    required String vaccine,
    required String dose,
    required String lot_number,
    required String application_date,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Profile_insurance',
      apiUrl:
          'https://app.aryymd.com/api/v1/patient/medical_history/vaccination_history',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      params: {},
      body: '''
  {
    "vaccine": "Viruela",
    "dose": "2 dosis",
    "lot_number": "A1ER",
    "application_date": "2000-09-08"
  }''',
      bodyType: BodyType.JSON,
      returnBody: true,
      cache: false,
    );
  }

  static Future<ApiCallResponse> pathological_history_view(
      {required String previous_surgeries,
      required String blood_transfusions,
      required String diabetes,
      required String heart_diseases,
      required String blood_pressure,
      required String thyroid_diseases,
      required String cancer,
      required String kidney_stones,
      required String hepatitis,
      required String trauma,
      required String respiratory_diseases,
      required String ets,
      required String gastrointestinal_pathologies}) {
    return ApiManager.instance.makeApiCall(
      callName: 'Profile_insurance',
      apiUrl:
          'https://app.aryymd.com/api/v1/patient/medical_history/pathological_history',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      params: {},
      body: '''
  {
  "previous_surgeries": "N/A",
    "blood_transfusions": "N/A",
    "diabetes": "Tipo 1",
    "heart_diseases": "N/A",
    "blood_pressure": "N/A",
    "thyroid_diseases": "N/A",
    "cancer": "Cáncer de pancreas",
    "kidney_stones": "Si",
    "hepatitis": "Hepatitis A",
    "trauma": "N/A",
    "respiratory_diseases": "N/A",
    "ets": "N/A",
    "gastrointestinal_pathologies": "N/A"
  }''',
      bodyType: BodyType.JSON,
      returnBody: true,
      cache: false,
    );
  }

  static Future<ApiCallResponse> non_pathological_history_view(
      {required String previous_surgeries,
      required String blood_transfusions,
      required String diabetes,
      required String heart_diseases,
      required String blood_pressure,
      required String thyroid_diseases,
      required String cancer,
      required String kidney_stones,
      required String hepatitis,
      required String trauma,
      required String respiratory_diseases,
      required String ets,
      required String gastrointestinal_pathologies}) {
    return ApiManager.instance.makeApiCall(
      callName: 'Profile_insurance',
      apiUrl:
          'https://app.aryymd.com/api/v1/patient/medical_history/non_pathological_history',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      params: {},
      body: '''
  {
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

  static Future<ApiCallResponse> hereditary_background_view(
      {required String previous_surgeries,
      required String blood_transfusions,
      required String diabetes,
      required String heart_diseases,
      required String blood_pressure,
      required String thyroid_diseases,
      required String cancer,
      required String kidney_stones,
      required String hepatitis,
      required String trauma,
      required String respiratory_diseases,
      required String ets,
      required String gastrointestinal_pathologies}) {
    return ApiManager.instance.makeApiCall(
      callName: 'Profile_insurance',
      apiUrl:
          'https://app.aryymd.com/api/v1/patient/medical_history/hereditary_background',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      params: {},
      body: '''
  {
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

  static Future<ApiCallResponse> vaccination_history_view({
    required String vaccine,
    required String dose,
    required String lot_number,
    required String application_date,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Profile_insurance',
      apiUrl:
          'https://app.aryymd.com/api/v1/patient/medical_history/vaccination_history',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      params: {},
      body: '''
  {
    "vaccine": "Viruela",
    "dose": "2 dosis",
    "lot_number": "A1ER",
    "application_date": "2000-09-08"
  }''',
      bodyType: BodyType.JSON,
      returnBody: true,
      cache: false,
    );
  }

//---------------------------------------------- EDITAR INFORMACION-------------------------------------
  static Future<ApiCallResponse> profile_basic_edit({
    required String vaccine,
    required String dose,
    required String lot_number,
    required String application_date,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Profile_insurance',
      apiUrl:
          'https://app.aryymd.com/api/v1/patient/medical_history/vaccination_history',
      callType: ApiCallType.PUT,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      params: {},
      body: '''
  {
    "vaccine": "Viruela",
    "dose": "2 dosis",
    "lot_number": "A1ER",
    "application_date": "2000-09-08"
  }''',
      bodyType: BodyType.JSON,
      returnBody: true,
      cache: false,
    );
  }

  static Future<ApiCallResponse> pathological_history_edit(
      {required String previous_surgeries,
      required String blood_transfusions,
      required String diabetes,
      required String heart_diseases,
      required String blood_pressure,
      required String thyroid_diseases,
      required String cancer,
      required String kidney_stones,
      required String hepatitis,
      required String trauma,
      required String respiratory_diseases,
      required String ets,
      required String gastrointestinal_pathologies}) {
    return ApiManager.instance.makeApiCall(
      callName: 'Profile_insurance',
      apiUrl:
          'https://app.aryymd.com/api/v1/patient/medical_history/pathological_history',
      callType: ApiCallType.PUT,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      params: {},
      body: '''
  {
  "previous_surgeries": "N/A",
    "blood_transfusions": "N/A",
    "diabetes": "Tipo 1",
    "heart_diseases": "N/A",
    "blood_pressure": "N/A",
    "thyroid_diseases": "N/A",
    "cancer": "Cáncer de pancreas",
    "kidney_stones": "Si",
    "hepatitis": "Hepatitis A",
    "trauma": "N/A",
    "respiratory_diseases": "N/A",
    "ets": "N/A",
    "gastrointestinal_pathologies": "N/A"
  }''',
      bodyType: BodyType.JSON,
      returnBody: true,
      cache: false,
    );
  }

  static Future<ApiCallResponse> non_pathological_history_edit(
      {required String previous_surgeries,
      required String blood_transfusions,
      required String diabetes,
      required String heart_diseases,
      required String blood_pressure,
      required String thyroid_diseases,
      required String cancer,
      required String kidney_stones,
      required String hepatitis,
      required String trauma,
      required String respiratory_diseases,
      required String ets,
      required String gastrointestinal_pathologies}) {
    return ApiManager.instance.makeApiCall(
      callName: 'Profile_insurance',
      apiUrl:
          'https://app.aryymd.com/api/v1/patient/medical_history/non_pathological_history',
      callType: ApiCallType.PUT,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      params: {},
      body: '''
  {
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

  static Future<ApiCallResponse> hereditary_background_edit(
      {required String previous_surgeries,
      required String blood_transfusions,
      required String diabetes,
      required String heart_diseases,
      required String blood_pressure,
      required String thyroid_diseases,
      required String cancer,
      required String kidney_stones,
      required String hepatitis,
      required String trauma,
      required String respiratory_diseases,
      required String ets,
      required String gastrointestinal_pathologies}) {
    return ApiManager.instance.makeApiCall(
      callName: 'Profile_insurance',
      apiUrl:
          'https://app.aryymd.com/api/v1/patient/medical_history/hereditary_background',
      callType: ApiCallType.PUT,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      params: {},
      body: '''
  {
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

  static Future<ApiCallResponse> vaccination_history_edit({
    required String vaccine,
    required String dose,
    required String lot_number,
    required String application_date,
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Profile_insurance',
      apiUrl:
          'https://app.aryymd.com/api/v1/patient/medical_history/vaccination_history',
      callType: ApiCallType.PUT,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      params: {},
      body: '''
  {
    "vaccine": "Viruela",
    "dose": "2 dosis",
    "lot_number": "A1ER",
    "application_date": "2000-09-08"
  }''',
      bodyType: BodyType.JSON,
      returnBody: true,
      cache: false,
    );
  }*/
}
