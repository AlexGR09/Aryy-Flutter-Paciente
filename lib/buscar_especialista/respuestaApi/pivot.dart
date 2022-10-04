class Pivot {
  int consultorioId;
  int municipioId;

  Pivot({
    required this.consultorioId,
    required this.municipioId,
  });

  factory Pivot.fromJson(Map<String, dynamic> json) => Pivot(
        consultorioId: json["consultorio_id"],
        municipioId: json["municipio_id"],
      );

  Map<String, dynamic> toJson() => {
        "consultorio_id": consultorioId,
        "municipio_id": municipioId,
      };
}
