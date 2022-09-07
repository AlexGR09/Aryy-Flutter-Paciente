import 'package:flutter/cupertino.dart';

class Country {
  final String common;
  final String cca2;
  final String flag;

  //Country({this.name = '', this.cca2 = '', this.capital = '', this.flag = ''});
  const Country({required this.common, required this.cca2, required this.flag});

  //crear un constructor que me permita hacer una instancia de pais y que muestre la lista

//retorna una instancia de pais
  static Country fromJson(Map json) {
    //se recibe un mapa
    return Country(
      common: json['name'],
      cca2: json['cca2'],
      flag: json['flag'],
    );
  }

  //1. CODIGO AGREGADO RECIENTEMENTE (TAMPOCO FUNCIONA)
  /*Country.fromJson(Map<String, dynamic> json) {
    return Country(
      common: json ['common'], 
      cca2: json ['cca2'], 
      flag: json ['flag'],
    );
  }*/

  //2. OTRA OPCION PARA CONSUMIR API

  /* String toString() {
    return 'Instance of Country: $common';
  }*/
}
