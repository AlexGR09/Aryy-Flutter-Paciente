import 'dart:convert'; // sirve para: jsonDecode()
// import 'package:dio/dio.dart';  no voy a usar dio para esta prueba
// import 'package:flutter/material.dart'; tampoco usaré material aqui
import 'package:http/http.dart' as http; // similar a dio.dart
import 'package:prueba_api_v1/models/country.dart';
import 'package:prueba_api_v1/models/country_responses.dart'; // Para la opcion 2

class CountryService {
  //
  // Opción 1. Short version: Crea paises de un request

  Future<Country> getCountryByName(String countryReq) async {
    final resp = await http
        .get(Uri.parse("https://restcountries.com/v3.1/name/$countryReq"));
    if (resp.statusCode == 200) {
      List<dynamic> jsonDecoded = jsonDecode(resp.body);
      // Los datos viende dentro de array: [{jsondata}]. Se extrae:
      var result = jsonDecoded[0];
      // Se crea una instancia con los datos que vienen:
      Country country = Country.fromJson(result);
      // Se puede simplificar a return Country.fromJson(jsonDecode(resp.body)[0]); pero menos leible
      return country;
    } else {
      throw Exception('Failed to load album');
    }
  }

  // Opción 2. Complet version: Verifica servidor, batch y crea lista

  // Convierte json a Country class
  static Future<CountrySearchResponse?> query(String search) async {
    // similar a dio.get que usabas
    var response = await http
        .get(Uri.parse("https://restcountries.com/v3.1/name/$search"));
    // Revisa la respuesta del servidor antes de crear la lista de paises
    if (response.statusCode >= 200 && response.statusCode < 300) {
      // convierte de string a json
      var map = json.decode(response.body);
      // crea la lista de nombres
      return CountrySearchResponse.fromJson(map);
    } else {
      // Si el servidor no respondio 200 ok, muestra el status
      throw Exception('No se pudieron cargar los paises.');
      // print("Query failed: ${response.body} (${response.statusCode})");
    }
  }
}
