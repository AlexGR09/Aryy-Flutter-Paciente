import 'package:prueba_api_v1/models/country.dart';
import 'package:prueba_api_v1/services/country_service.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

class CountrySearchDelegate extends SearchDelegate/*<Country>*/ {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(onPressed: () => this.query = '', icon: Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    //contiene la flecha de regresar
    return IconButton(
      onPressed: () => this.close(context, null),
      icon: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    //obteniendo el valor de la caja de text
    if (query.trim().length == 0) {
      return Text('no hay valor en el query');
    }
    //print(query);
    final countryService = new CountryService();
    // query!
    // se tiene que regresar un widget
    return FutureBuilder(
      future: countryService.getCountryByName(query),
      builder: (_, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          //crear la lista
          return _showCountries(snapshot.data);
        } else {
          //Loading
          return Center(
              child: CircularProgressIndicator(
            strokeWidth: 4,
          ));
        }
      },
    );
    //return Text('buildResults');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListTile(
      title: Text('Suggestions'),
    );
  }

  Widget _showCountries(List<Country> countries) {
    return ListView.builder(
        itemCount: countries.length, //total de elementos en la lista
        itemBuilder: (_, i) {
          final pais = countries[i];
          return ListTile(
            title: Text(pais.common),
          );
        });
  }
}
