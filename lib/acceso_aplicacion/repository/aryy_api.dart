import '../../_aryy_common_components/repository/api/api_manager.dart';
export '../../_aryy_common_components/repository/api/api_manager.dart'
    show ApiCallResponse;

// 1. All Aryy Api connection!

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
  "email": "$email",
  "password": "$password"
}''',
      bodyType: BodyType.JSON,
      returnBody: true,
      cache: false,
    );
  }

  static Future<ApiCallResponse> singinUser(
      {String?
          email, // "Para el registro de usuariom todos los campos serán obligatorios a excepción del correo electrónico".
      required String password,
      required String passwordConfirmation,
      required String countryCode,
      required int phoneNumber}) {
    return ApiManager.instance.makeApiCall(
      callName: 'SigninUser',
      apiUrl: 'https://app.aryymd.com/api/v1/register',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
      },
      params: {},
      body: '''
{
  "email": "max2@gmail.com",
  "password": "password"
  "password_confirmation" : "password",
  "country_code" : "+52",
  "phone_number" : "9613594388",
  "type_user" : "Patient"
}''',
      bodyType: BodyType.JSON,
      returnBody: true,
      cache: false,
    );
  }

  static Future<ApiCallResponse> singinPatient(
      {required int patientID,
      required int cityID,
      required String fullName,
      required String gender,
      required String birthday,
      required String countryCode,
      required int emergencyNumber,
      required int occupationID}) {
    return ApiManager.instance.makeApiCall(
      callName: 'SigninPatient',
      apiUrl: 'https://app.aryymd.com/api/v1/register',
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
  "password_confirmation" : "password",
  "country_code" : "+52",
  "phone_number" : "9613594388",
  "type_user" : "Patient"
}''',
      bodyType: BodyType.JSON,
      returnBody: true,
      cache: false,
    );
  }
}
