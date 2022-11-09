class DatosConsultorioAPI {
  final String titulo;
  final String subTitulo;
  DatosConsultorioAPI(this.titulo, this.subTitulo);
}

List<DatosConsultorioAPI> simulacionDatosConsultorio = <DatosConsultorioAPI>[
  DatosConsultorioAPI('Fulanito Detal', 'Consulta de primera vez: \$800'),
  DatosConsultorioAPI('Consultorio Principal', ''),
  DatosConsultorioAPI('Lun, 5 diciembre 2022', ''),
  DatosConsultorioAPI('10:00 - 10:30 hrs', ''),
];
