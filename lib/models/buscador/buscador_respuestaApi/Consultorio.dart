import './Municipio.dart';

class Consultorio {
  Consultorio({
    required this.id,
    required this.medicoId,
    required this.nombreconsultorio,
    required this.direccionconsultorio,
    required this.indicaciones,
    required this.telefonoconsultorio,
    required this.accesoaconsultorio,
    required this.metodospagos,
    required this.duracionconsulta,
    required this.precioconsulta,
    required this.edadpaciente,
    required this.areaservicio,
    required this.sitioweb,
    this.creadoporId,
    this.actualizadoporId,
    this.createdAt,
    this.updatedAt,
    this.deletedAt,
    required this.municipio,
  });

  int id;
  int medicoId;
  String nombreconsultorio;
  String direccionconsultorio;
  String indicaciones;
  String telefonoconsultorio;
  String accesoaconsultorio;
  String metodospagos;
  String duracionconsulta;
  String precioconsulta;
  String edadpaciente;
  String areaservicio;
  String sitioweb;
  dynamic creadoporId;
  dynamic actualizadoporId;
  dynamic createdAt;
  dynamic updatedAt;
  dynamic deletedAt;
  List<Municipio> municipio;

  factory Consultorio.fromJson(Map<String, dynamic> json) => Consultorio(
        id: json["id"],
        medicoId: json["medico_id"],
        nombreconsultorio: json["nombreconsultorio"],
        direccionconsultorio: json["direccionconsultorio"],
        indicaciones: json["indicaciones"],
        telefonoconsultorio: json["telefonoconsultorio"],
        accesoaconsultorio: json["accesoaconsultorio"],
        metodospagos: json["metodospagos"],
        duracionconsulta: json["duracionconsulta"],
        precioconsulta: json["precioconsulta"],
        edadpaciente: json["edadpaciente"],
        areaservicio: json["areaservicio"],
        sitioweb: json["sitioweb"],
        creadoporId: json["creadopor_id"],
        actualizadoporId: json["actualizadopor_id"],
        createdAt: json["created_at"],
        updatedAt: json["updated_at"],
        deletedAt: json["deleted_at"],
        municipio: List<Municipio>.from(
            json["municipio"].map((x) => Municipio.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "medico_id": medicoId,
        "nombreconsultorio": nombreconsultorio,
        "direccionconsultorio": direccionconsultorio,
        "indicaciones": indicaciones,
        "telefonoconsultorio": telefonoconsultorio,
        "accesoaconsultorio": accesoaconsultorio,
        "metodospagos": metodospagos,
        "duracionconsulta": duracionconsulta,
        "precioconsulta": precioconsulta,
        "edadpaciente": edadpaciente,
        "areaservicio": areaservicio,
        "sitioweb": sitioweb,
        "creadopor_id": creadoporId,
        "actualizadopor_id": actualizadoporId,
        "created_at": createdAt,
        "updated_at": updatedAt,
        "deleted_at": deletedAt,
        "municipio": List<dynamic>.from(municipio.map((x) => x.toJson())),
      };
}
