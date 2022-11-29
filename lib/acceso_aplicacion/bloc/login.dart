import 'package:flutter/material.dart';
import '../repository/api_login.dart';
import '../../flutter_flow/flutter_flow_util.dart';

// Los datos extraidos de la respuesta de la api
List<dynamic> listaDeDatos = [];

void AryyLogin(
    {TextEditingController? emailTextController,
    TextEditingController? passwordTextController}) async {
  ApiCallResponse? apiResult = await ApiLogin.call(
    email: "max@gmail.com",
    password: "password",
  );
  // Conexión exitosa?
  if ((apiResult.succeeded)) {
    final resultado = getJsonField(apiResult.jsonBody, r'''$[*]''').toList();
    listaDeDatos = resultado[0];
  }
  // else {
  // Qué debemos de mostrar si no es success?
  // el mensaje de olvidaste tu contraseña?
  return;
}
