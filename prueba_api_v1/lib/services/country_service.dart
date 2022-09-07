//import 'dart:html';

import 'dart:html';

import 'package:dio/dio.dart';
import 'package:prueba_api_v1/models/country.dart';

class CountryService {
  final _dio = new Dio();

  Future getCountryByName(String name) async {
    try {
      //final url = 'https://restcountries.com/v3.1/name/$name';
      final url = 'https://restcountries.com/v3.1/all/$name';
      final resp = await _dio.get(url);

      final List<dynamic> countryList = resp.data;
      //Future List <dynamic> countryList = resp.data;

      //crea lista con paises ya instanciados
      return countryList.map((obj) => Country.fromJson(obj)).toList();
      //print(resp.data);
      //return [];
    } catch (e) {
      print(e);
      return [];
    }
  }
}
