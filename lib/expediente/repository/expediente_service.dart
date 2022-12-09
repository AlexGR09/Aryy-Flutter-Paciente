import 'package:http/http.dart' as http;

import '../../_aryy_common_components/repository/api/api_manager.dart';

class ExpedienteService {
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
      },
      params: {},
      body: '''
{     'bearer_token': 14|rO7zNLwD6TzA4BOLbNjXp9kI81TNwCcaAhtT1R98,
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
