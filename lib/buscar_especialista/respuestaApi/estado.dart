class Estado {
  int id;
  String nombre;
  int paisId;
  dynamic creadoporId;
  dynamic actualizadoporId;
  dynamic createdAt;
  dynamic updatedAt;
  dynamic deletedAt;
  String short;
  int phonecode;

  Estado({
    required this.id,
    required this.nombre,
    required this.paisId,
    this.creadoporId,
    this.actualizadoporId,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    required this.short,
    required this.phonecode,
  });

  factory Estado.fromJson(Map<String, dynamic> json) => Estado(
        id: json["id"],
        nombre: json["nombre"],
        paisId: json["pais_id"],
        creadoporId: json["creadopor_id"],
        actualizadoporId: json["actualizadopor_id"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        deletedAt: json["deleted_at"],
        short: json["short"],
        phonecode: json["phonecode"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nombre": nombre,
        "pais_id": paisId,
        "creadopor_id": creadoporId,
        "actualizadopor_id": actualizadoporId,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "deleted_at": deletedAt,
        "short": short,
        "phonecode": phonecode,
      };
}
