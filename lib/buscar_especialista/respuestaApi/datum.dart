import './consultorio.dart';

class Datum {
  int id;
  String drnombre;
  int userId;
  String aniosexperiencia;
  dynamic creadoporId;
  dynamic actualizadoporId;
  dynamic createdAt;
  dynamic updatedAt;
  dynamic deletedAt;
  List<Consultorio> consultorio;

  Datum({
    required this.id,
    required this.drnombre,
    required this.userId,
    required this.aniosexperiencia,
    this.creadoporId,
    this.actualizadoporId,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    required this.consultorio,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"],
        drnombre: json["drnombre"],
        userId: json["user_id"],
        aniosexperiencia: json["aniosexperiencia"],
        creadoporId: json["creadopor_id"],
        actualizadoporId: json["actualizadopor_id"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        deletedAt: json["deleted_at"],
        consultorio: List<Consultorio>.from(
            json["consultorio"].map((x) => Consultorio.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "drnombre": drnombre,
        "user_id": userId,
        "aniosexperiencia": aniosexperiencia,
        "creadopor_id": creadoporId,
        "actualizadopor_id": actualizadoporId,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "deleted_at": deletedAt,
        "consultorio": List<dynamic>.from(consultorio.map((x) => x.toJson())),
      };
}
