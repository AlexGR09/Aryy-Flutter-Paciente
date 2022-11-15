// API Simulation
enum Disponibilidad {
  vacia,
  disponible,
  ocupada,
}

class APISimulation {
  late String hora;
  late Disponibilidad disponibilidad;
  APISimulation(this.hora, this.disponibilidad);
}

List<APISimulation> simulationDay01 = <APISimulation>[
  APISimulation("-", Disponibilidad.vacia),
  APISimulation("-", Disponibilidad.vacia),
  APISimulation("-", Disponibilidad.vacia),
  APISimulation("-", Disponibilidad.vacia),
  APISimulation("-", Disponibilidad.vacia),
];
List<APISimulation> simulationDay02 = <APISimulation>[
  APISimulation("13:00", Disponibilidad.disponible),
  APISimulation("13:30", Disponibilidad.disponible),
  APISimulation("14:00", Disponibilidad.disponible),
  APISimulation("14:30", Disponibilidad.disponible),
  APISimulation("15:00", Disponibilidad.disponible),
];
List<APISimulation> simulationDay03 = <APISimulation>[
  APISimulation("13:00", Disponibilidad.disponible),
  APISimulation("13:30", Disponibilidad.disponible),
  APISimulation("14:00", Disponibilidad.ocupada),
  APISimulation("14:30", Disponibilidad.ocupada),
  APISimulation("15:00", Disponibilidad.ocupada),
];
