import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';

class BotonesFiltro {
  final double width;
  final String textoBoton;
  late IconData? icono;
  final double margenIzquierda;
  BotonesFiltro(this.width, this.icono, this.textoBoton, this.margenIzquierda);
}

class BotonesFiltroBusqueda extends StatefulWidget {
  const BotonesFiltroBusqueda({super.key});

  @override
  State<BotonesFiltroBusqueda> createState() => _BotonesFiltroBusquedaState();
}

class _BotonesFiltroBusquedaState extends State<BotonesFiltroBusqueda> {
  // Exiten 4 botones como filtro de búsqueda: Mapa, Cerca de mí, Fechas disponibles y Filtros
  List<BotonesFiltro> botonesFiltro = <BotonesFiltro>[
    BotonesFiltro(130, Icons.location_on_outlined, "Mapa", 20),
    BotonesFiltro(130, null, "Cerca de mí", 10),
    BotonesFiltro(190, null, "Fechas disponibles", 10),
    BotonesFiltro(130, Icons.filter_list, "Filtros", 10),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 25),
        child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Padding>[
              for (var i = 0; i < botonesFiltro.length; i++) ...[
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(
                      botonesFiltro[i].margenIzquierda, 0, 10, 0),
                  child: FFButtonWidget(
                    onPressed: () {
                      print('${botonesFiltro[i]} pressed ...');
                    },
                    text: botonesFiltro[i].textoBoton,
                    icon: botonesFiltro[i].icono != null
                        ? Icon(
                            botonesFiltro[i].icono,
                            color: FlutterFlowTheme.of(context).primaryColor,
                            size: 25,
                          )
                        : null,
                    options: FFButtonOptions(
                      elevation: 0,
                      width: botonesFiltro[i].width,
                      height: 60,
                      color: FlutterFlowTheme.of(context).primaryBackground,
                      textStyle: FlutterFlowTheme.of(context)
                          .subtitle2
                          .override(
                            fontFamily: 'Montserrat',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            fontSize: 17,
                            fontWeight: FontWeight.normal,
                          ),
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).secondaryText,
                        width: 0.5,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                )
              ],
            ]));
  }
}
