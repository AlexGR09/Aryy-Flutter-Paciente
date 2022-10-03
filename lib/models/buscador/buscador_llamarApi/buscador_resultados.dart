import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// Las listas del resultado de la búsqueda en la api mostrarán iconos y texto adicional
// dependiendo del tipo de dato que se muestre.
class TipoDeLista {
  String nombre;
  IconData icono;
  Color colorFondo;
  TipoDeLista(this.nombre, this.icono, this.colorFondo);
}

// Se crean los tipos de resultados, puede ser un especialista, medicamento, etc.
late List<TipoDeLista> tipoDeLista = <TipoDeLista>[
  TipoDeLista(
      "Especialista", Icons.medical_services_outlined, const Color(0xFF7900FF)),
  TipoDeLista("Medicamento", FontAwesomeIcons.pills, const Color(0xFF4700FF)),
  TipoDeLista("Síntoma", Icons.saved_search, const Color(0xFFB380FF)),
  TipoDeLista("Prueba de triglicéridos", FontAwesomeIcons.microscope,
      const Color(0xFF5101CC))
];
