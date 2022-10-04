import 'dart:convert';
import './datum.dart';
import './info.dart';
import './links.dart';

// Parse JSON data
//     final respuestaApi = respuestaApiFromJson(jsonString);

RespuestaApi respuestaApiFromJson(String str) =>
    RespuestaApi.fromJson(json.decode(str));
String respuestaApiToJson(RespuestaApi data) => json.encode(data.toJson());

class RespuestaApi {
  int currentPage;
  List<Datum> data;
  String firstPageUrl;
  int from;
  int lastPage;
  String lastPageUrl;
  List<Link> links;
  dynamic nextPageUrl;
  String path;
  int perPage;
  dynamic prevPageUrl;
  int to;
  int total;
  bool igor;
  dynamic error;
  dynamic warning;
  Info info;

  RespuestaApi({
    required this.currentPage,
    required this.data,
    required this.firstPageUrl,
    required this.from,
    required this.lastPage,
    required this.lastPageUrl,
    required this.links,
    required this.nextPageUrl,
    required this.path,
    required this.perPage,
    required this.prevPageUrl,
    required this.to,
    required this.total,
    required this.igor,
    this.error,
    this.warning,
    required this.info,
  });

  factory RespuestaApi.fromJson(Map<String, dynamic> json) => RespuestaApi(
        currentPage: json["current_page"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        firstPageUrl: json["first_page_url"],
        from: json["from"],
        lastPage: json["last_page"],
        lastPageUrl: json["last_page_url"],
        links: List<Link>.from(json["links"].map((x) => Link.fromJson(x))),
        nextPageUrl: json["next_page_url"],
        path: json["path"],
        perPage: json["per_page"],
        prevPageUrl: json["prev_page_url"],
        to: json["to"],
        total: json["total"],
        igor: json["igor"],
        error: json["error"],
        warning: json["warning"],
        info: Info.fromJson(json["info"]),
      );

  Map<String, dynamic> toJson() => {
        "current_page": currentPage,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "first_page_url": firstPageUrl,
        "from": from,
        "last_page": lastPage,
        "last_page_url": lastPageUrl,
        "links": List<dynamic>.from(links.map((x) => x.toJson())),
        "next_page_url": nextPageUrl,
        "path": path,
        "per_page": perPage,
        "prev_page_url": prevPageUrl,
        "to": to,
        "total": total,
        "igor": igor,
        "error": error,
        "warning": warning,
        "info": info.toJson(),
      };
}
