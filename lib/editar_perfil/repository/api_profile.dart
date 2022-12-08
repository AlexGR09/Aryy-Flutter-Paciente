import 'dart:convert';
import '../../_aryy_common_components/repository/api/api_manager.dart';
export '../../_aryy_common_components/repository/api/api_manager.dart'
    show ApiCallResponse;

class ApiProfile {
  static Future<ApiCallResponse> profile_basic(
      {required String full_name,
      required String agender,
      required String birthday,
      required String country_code,
      required String phone_number,
      required String email,
      required String emergency_number,
      required String city_id,
      required String occupation_id}) {
    return ApiManager.instance.makeApiCall(
      callName: 'Profile_basic',
      apiUrl: 'https://app.aryymd.com/api/v1/patient/profile/basic_information',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      params: {},
      body: '''
{
  "full_name": "paciente",
  "gender": "Femenino",
  "birthday": "1996-08-05",
  "country_code": "+50",
  "phone_number": "9874563211",
  "email": "paciente_test@gmail.com",
  "photo": null,
  "emergency_number": "9618889998",
  "city_id": "5",
  "occupation_id":12
}''',
      bodyType: BodyType.JSON,
      returnBody: true,
      cache: false,
    );
  }

  static Future<ApiCallResponse> profile_insurance(
      {required String full_name,
      required String agender,
      required String birthday,
      required String country_code,
      required String phone_number,
      required String email,
      required String emergency_number,
      required String city_id,
      required String occupation_id}) {
    return ApiManager.instance.makeApiCall(
      callName: 'Profile_insurance',
      apiUrl:
          'https://app.aryymd.com/api/v1/patient/profile/health_insurance_data',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      params: {},
      body: '''
{
  "address" : {
        "location_name": "casa",
		"street" : "hidalgo y colosio",
        "outdoor_number":"#44B",
        "interior_number":"44",
        "colonia" : "centro",
        "additional_information":"N/A"
	},
	"zip_code" : "29000",
}''',
      bodyType: BodyType.JSON,
      returnBody: true,
      cache: false,
    );
  }
}
