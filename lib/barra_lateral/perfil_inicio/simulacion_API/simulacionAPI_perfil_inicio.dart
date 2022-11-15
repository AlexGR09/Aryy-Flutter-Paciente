class Historial {
  final int clasificacionMedica;
  final String titulo;
  final String subTitulo;
  final String fecha; // Temp
  Historial(this.clasificacionMedica, this.titulo, this.subTitulo, this.fecha);
}

// Simulacion de datos API

List<Historial> simulacionHistorialCitas = <Historial>[
  Historial(0, "Dr. Nombre Apellido Apellido", "Especialidad", "21/12/21"),
  Historial(0, "Dr. Nombre Apellido Apellido", "Especialidad", "15/11/21"),
  Historial(0, "Dr. Nombre Apellido Apellido", "Especialidad", "21/12/21"),
  Historial(0, "Dr. Nombre Apellido Apellido", "Especialidad", "15/11/21"),
  Historial(0, "Dr. Nombre Apellido Apellido", "Especialidad", "21/12/21"),
  Historial(0, "Dr. Nombre Apellido Apellido", "Especialidad", "15/11/21"),
  Historial(0, "Dr. Nombre Apellido Apellido", "Especialidad", "21/12/21"),
  Historial(0, "Dr. Nombre Apellido Apellido", "Especialidad", "15/11/21"),
  Historial(0, "Dr. Nombre Apellido Apellido", "Especialidad", "21/12/21"),
  Historial(0, "Dr. Nombre Apellido Apellido", "Especialidad", "15/11/21"),
];

List<Historial> simulacionHistorialCompras = <Historial>[
  Historial(1, "Paracetamo", "Tabletas: 550 mg", "21/12/21"),
  Historial(1, "Naproxeno", "Tabletas: 400 mg", "15/11/21"),
];

List<Historial> simulacionHistorialAanalisis = <Historial>[
  Historial(3, "Paracetamo", "Tabletas: 550 mg", "21/12/21"),
  Historial(3, "Naproxeno", "Tabletas: 400 mg", "15/11/21"),
];

var simulacionDataAPI = [
  simulacionHistorialCitas,
  simulacionHistorialCompras,
  simulacionHistorialAanalisis
];
