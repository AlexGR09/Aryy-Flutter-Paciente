import 'dart:html';
import 'package:dio/dio.dart';
import 'package:prueba_api_v1/models/country.dart';

import 'dart:convert'; // required by: jsonDecode
import 'package:http/http.dart' as http; // similar a dio.dart
import 'package:prueba_api_v1/models/country_response'; // Para la opcion 2

class CountryService {
  // Opción 1. utilizando getCountryByName con dio.dart (no pude correr dio :(

  // Properties
  List<Country> search;
  // Constructor
  CountryService({required this.search});
  //
  Future getCountryByName(String name) async {
    try {
      // Hay dos opciones para tener los detalles desde https://restcountries.com/#api-endpoints-v3-name
      // 1. https://restcountries.com/v3.1/all
      // 2. https://restcountries.com/v3.1/name/peru
      // aqui estaba escrito junto al final, decia: '/all/$name'
      // Entonces, se llama un pais
      final url = 'https://restcountries.com/v3.1/name/$name';
      final resp = await _dio.get(url);
      List<dynamic> countryList = resp.data;
      // Crea lista con paises ya instanciados
      List<Country> search = countryList.map((dynamic value) => Country.fromJson(value)).toList();
      return CountryService(search: search);
      //print(resp.data);
      //return [];
    } catch (e) {
      print(e);
      return [];
    }
  }

  // Opción 2. utilizando http.dart
  //
  static Future<CountrySearchResponse?> query(String search) async {
    // similar a dio.get
    var response = await http
        .get(Uri.parse("https://restcountries.com/v3.1/name/$search"));
    // Revisa el estatus antes de crear la lista de paises
    if (response.statusCode >= 200 && response.statusCode < 300) {
      // convierte de string a json
      var map = json.decode(response.body);
      // crea la lista de nombres
      return CountrySearchResponse.fromJson(map);
    } else {
      print("Query failed: ${response.body} (${response.statusCode})");
      return null;
    }
  }
}
