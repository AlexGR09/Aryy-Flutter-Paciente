import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// Las listas del resultado de la búsqueda en la api mostrarán iconos y texto adicional
// dependiendo del tipo de dato que se muestre.
class CategoriaMedica {
  String nombre;
  IconData icono;
  Color colorFondo;
  CategoriaMedica(this.nombre, this.icono, this.colorFondo);
}

// Se crean los tipos de resultados, puede ser un especialista, medicamento, etc.
List<CategoriaMedica> categoriaMedica = <CategoriaMedica>[
  CategoriaMedica(
      "Especialista", Icons.medical_services_outlined, const Color(0xFF7900FF)),
  CategoriaMedica(
      "Medicamento", FontAwesomeIcons.pills, const Color(0xFF4700FF)),
  CategoriaMedica("Síntoma", Icons.saved_search, const Color(0xFFB380FF)),
  CategoriaMedica("Prueba de triglicéridos", FontAwesomeIcons.microscope,
      const Color(0xFF5101CC))
];
