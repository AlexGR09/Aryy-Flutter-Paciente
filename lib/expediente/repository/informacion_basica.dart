import 'package:http/http.dart' as http;

class InformacionBasicaService {
  postInfoBasica(
      String food_allergy,
      String drug_allergy,
      String enviromental_allergy,
      String weight,
      String height,
      String blood_type) async {
    try {
      var url = Uri.parse(
          'https://app.aryymd.com/api/v1/patient/medical_history/basic_information');
      var response = await http.post(url,

          //AQUI IRA NUESTRO TOKEN
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
          }, body: {
        "food_allergy": "Camarón",
        "drug_allergy": "Amoxilina",
        "environmental_allergy": "polvo",
        "weight": {"weight": "60", "unit_of_measurement": "kg"},
        "height": {"height": "1.70", "unit_of_measurement": "cm"},
        "blood_type": "-O"
      });

      if (response.statusCode == 200) {
        print(response.body.runtimeType);
      }
      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');
    } catch (e) {
      print(e);
    }
  }
}
