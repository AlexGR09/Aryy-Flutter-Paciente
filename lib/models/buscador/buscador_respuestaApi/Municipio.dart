import './Estado.dart';
import './Pivot.dart';

class Municipio {
  Municipio({
    required this.id,
    required this.nombre,
    required this.estadoId,
    required this.paisId,
    this.creadoporId,
    this.actualizadoporId,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    required this.pivot,
    required this.estado,
    required this.pais,
  });

  int id;
  String nombre;
  int estadoId;
  int paisId;
  dynamic creadoporId;
  dynamic actualizadoporId;
  dynamic createdAt;
  dynamic updatedAt;
  dynamic deletedAt;
  Pivot pivot;
  Estado estado;
  Estado pais;

  factory Municipio.fromJson(Map<String, dynamic> json) => Municipio(
        id: json["id"],
        nombre: json["nombre"],
        estadoId: json["estado_id"],
        paisId: json["pais_id"],
        creadoporId: json["creadopor_id"],
        actualizadoporId: json["actualizadopor_id"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        deletedAt: json["deleted_at"],
        pivot: Pivot.fromJson(json["pivot"]),
        estado: Estado.fromJson(json["estado"]),
        pais: Estado.fromJson(json["pais"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "nombre": nombre,
        "estado_id": estadoId,
        "pais_id": paisId,
        "creadopor_id": creadoporId,
        "actualizadopor_id": actualizadoporId,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "deleted_at": deletedAt,
        "pivot": pivot.toJson(),
        "estado": estado.toJson(),
        "pais": pais.toJson(),
      };
}
