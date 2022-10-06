import '../flutter_flow/flutter_flow_theme.dart';
import '../next_page_tmp/transiciones.dart';
import '../buscar_especialista/buscar_especialista_widget.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class BotonBarraNavegacion {
  IconData iconData;
  BotonBarraNavegacion(this.iconData);
}

List<BotonBarraNavegacion> barradeNavegacion = <BotonBarraNavegacion>[
  BotonBarraNavegacion(Icons.calendar_month),
  BotonBarraNavegacion(Icons.medical_services),
  BotonBarraNavegacion(Icons.add_circle_outline),
  BotonBarraNavegacion(Icons.shopping_cart),
  BotonBarraNavegacion(Icons.person)
];

late int deltaIndex = 0, currentIndex = -1;

CurvedNavigationBar GetBarradeNavegacion(BuildContext context) {
  return CurvedNavigationBar(
      color: HexColor("#7900ff"),
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      buttonBackgroundColor: HexColor("b380ff"),
      height: 50,
      animationDuration: const Duration(milliseconds: 200),
      index: deltaIndex,
      animationCurve: Curves.bounceInOut,
      onTap: (index) {
        debugPrint("current Index is $index");
        if (currentIndex != deltaIndex) {
          switch (index) {
            case 2:
              CargarWidgetConTransicion(
                  context,
                  const BuscarEspecialistaWidget(),
                  PageTransitionType.bottomToTop);
              break;
          }
        }
        deltaIndex = index;
      },
      items: barradeNavegacion
          .map((boton) => Icon(
                boton.iconData,
                size: 30,
                color: Colors.white,
              ))
          .toList());
}
