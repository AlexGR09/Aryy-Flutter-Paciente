import 'package:http/http.dart' as http;

class ExpedienteService {
  postVacunacion(String vaccine, String dose, String lote_number,
      String aplication_date) async {
    try {
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
      });

      if (response.statusCode == 200) {
        print(response.body.runtimeType);
      }
      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');
      print(await http.read(url));
    } catch (e) {
      print(e);
    }
  }
}
