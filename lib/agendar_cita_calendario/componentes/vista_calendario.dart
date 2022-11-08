import '../simulacionAPI/simulacion_agendar_cita.dart';
import 'boton_elegir_horario.dart';
import '../../flutter_flow/flutter_flow_icon_button.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

enum TipodeEncabezado { diaSemana, fecha }

Padding NavigationButton(BuildContext context, IconData icon) {
  return Padding(
    padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
    child: Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 0,
          buttonSize: 45,
          fillColor: FlutterFlowTheme.of(context).primaryColor,
          icon: Icon(
            icon,
            color: FlutterFlowTheme.of(context).primaryBackground,
            size: 30,
          ),
          onPressed: () {
            print('Nav button pressed ...');
          },
        )
      ],
    ),
  );
}

List<Widget> CitasDelDia(BuildContext context, String title, String subTitle,
    List<APISimulation> citas) {
  return <Widget>[
    TextoEncabezado(context, title, TipodeEncabezado.diaSemana),
    Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
      child: TextoEncabezado(context, subTitle, TipodeEncabezado.fecha),
    ),
    for (var i = 0; i < citas.length; i++) ...[
      BotonElegirHorario(simulacionCita: citas[i]),
    ]
  ];
}

Text TextoEncabezado(
    BuildContext context, String text, TipodeEncabezado tipodeEncabezado) {
  return Text(
    text,
    style: FlutterFlowTheme.of(context).bodyText1.override(
          fontFamily: 'Montserrat',
          fontSize: 18,
          fontWeight: tipodeEncabezado == TipodeEncabezado.diaSemana
              ? FontWeight.w600
              : FontWeight.w300,
        ),
  );
}
