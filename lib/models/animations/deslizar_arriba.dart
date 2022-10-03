import 'package:flutter/widgets.dart';
import '../../buscar_especialista/buscar_especialista_widget.dart';
import '../../flutter_flow/flutter_flow_util.dart';

// Las animaciones de navegación entre vistas se guardarán aqui.

void animacion_hacia_arriba(
    BuildContext context, StatefulWidget siguienteWidget) {
  Navigator.push(
      context,
      PageTransition(
          curve: Curves.decelerate,
          duration: const Duration(milliseconds: 400),
          child: siguienteWidget,
          type: PageTransitionType.bottomToTop));
}

// Animaciones mas detalladas

//
Route animacion_deslizar_arriba(StatefulWidget siguienteVistaWidget) {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) =>
        siguienteVistaWidget,
    // Animation<double> producirá valores entre 0 y 1 al convertirlo en animación
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      // Aqui siempre se define el tipo de animacion entre vistas
      // esta animación será desde abajo hacia arriba
      const posInicial = Offset(0.0, 1.0); // abajo
      const posFinal = Offset.zero; // arriba
      // flutter utiliza curvas par hacer el ajuste de la velocidad de la animación
      const curve = Curves.ease;
      // Define la animación con Tween + agrega el uso de la curva con la funcion .chain
      var tween = Tween(begin: posInicial, end: posFinal)
          .chain(CurveTween(curve: curve));
      // Se crea la animación con el tipo (hay varios, ver: FractionalTranslation widget)
      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
    transitionDuration: const Duration(microseconds: 500),
  );
}
