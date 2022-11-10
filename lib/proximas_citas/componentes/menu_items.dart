import 'package:flutter/material.dart';

class MenuItems {
  final int id;
  final String texto;
  final String action; // cambiar despues por la accion que haga el item
  MenuItems({required this.id, required this.texto, required this.action});
}

List<MenuItems> opcionesMenuTarjeta({required bool esProximaCita}) {
  return esProximaCita
      ? [
          MenuItems(
              id: 0, texto: "Cambiar fecha", action: "cambiarfechaAction"),
          MenuItems(id: 1, texto: "Cancelar cita", action: "cancelarAction")
        ]
      : [
          MenuItems(id: 0, texto: "Ver datos", action: "verdatosAction"),
          MenuItems(id: 1, texto: "Eliminar cita", action: "EliminarCitaAction")
        ];
}
