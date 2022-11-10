import '../flutter_flow/flutter_flow_theme.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class BotonBarraNavegacion {
  final IconData iconData;
  // final Widget? vistaWidget;
  // final PageTransitionType
  // Cada botón tendra una vista que cargar,
  // para ser llamado en el onTap (el switch se quitará)
  // Las acciones de los botones
  BotonBarraNavegacion(this.iconData);
}

late int deltaIndex = 2, currentIndex = -1;

class BarraDeNavegacion extends StatefulWidget {
  const BarraDeNavegacion({super.key});

  @override
  State<BarraDeNavegacion> createState() => _BarraDeNavegacionState();
}

class _BarraDeNavegacionState extends State<BarraDeNavegacion> {
  List<BotonBarraNavegacion> botonesBarraNavegacion = <BotonBarraNavegacion>[
    BotonBarraNavegacion(Icons.calendar_month),
    BotonBarraNavegacion(Icons.medical_services),
    BotonBarraNavegacion(Icons.add_circle_outline),
    BotonBarraNavegacion(Icons.shopping_cart),
    BotonBarraNavegacion(Icons.person)
  ];

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
        color: HexColor("#7900ff"),
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        buttonBackgroundColor: HexColor("b380ff"),
        height: 50,
        animationDuration: const Duration(milliseconds: 200),
        index: deltaIndex,
        animationCurve: Curves.bounceInOut,
        onTap: (index) {
          debugPrint("currentIndex: $index, deltaIndex:$deltaIndex");
          if (currentIndex != deltaIndex) {
            switch (index) {
              case 0:
                Navigator.pushNamed(context, "proximas_citas");
                break;
              case 2:
                Navigator.pushNamed(context, "buscar_especialista");
                break;
            }
          }
          deltaIndex = index;
        },
        items: botonesBarraNavegacion
            .map((boton) => Icon(
                  boton.iconData,
                  size: 30,
                  color: Colors.white,
                ))
            .toList());
  }
}
