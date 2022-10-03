class Info {
  Info({
    required this.modelo,
  });

  List<String> modelo;

  factory Info.fromJson(Map<String, dynamic> json) => Info(
        modelo: List<String>.from(json["Modelo"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "Modelo": List<dynamic>.from(modelo.map((x) => x)),
      };
}
