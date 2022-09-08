import 'package:prueba_api_v1/models/country.dart';

class CountrySearchResponse {
  // Attributos
  String batchComplete;
  CountryQueryResponse query;
  // Constructor
  CountrySearchResponse({required this.batchComplete, required this.query});
  // Separa llama a la lista de paises
  factory CountrySearchResponse.fromJson(Map<String, dynamic> json) =>
      CountrySearchResponse(
          batchComplete: json["batchcomplete"],
          query: CountryQueryResponse.fromJson(json["query"]));
}

class CountryQueryResponse {
  // Attributos
  List<Country> search;
  // Constructor
  CountryQueryResponse({required this.search});
  // Regresa una lista<Country> con los resultados de la búsqueda
  factory CountryQueryResponse.fromJson(Map<String, dynamic> json) {
    List<dynamic> resultList = json['search'];
    List<Country> search = resultList
        .map((dynamic value) => Country.fromJson(value))
        .toList(growable: false);
    return CountryQueryResponse(search: search);
  }
}
