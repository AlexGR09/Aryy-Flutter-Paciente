class Name {
  String common;
  String official;
  Name(this.common, this.official);
  factory Name.fromJson(dynamic json) {
    return Name(json['common'], json['official']);
  }
}

class Country {
  // Propiedades que se quieren del request a la api
  final Name name;
  final String cca2;
  final String flag;
  // Constructor
  Country(this.name, this.cca2, this.flag);

  //retorna una instancia de pais
  factory Country.fromJson(dynamic json) {
    return Country(Name.fromJson(json['name']), json['cca2'], json['flag']);
  }
}
