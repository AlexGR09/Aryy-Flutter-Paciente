import '../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetalleConsulta {
  final IconData icon;
  final double iconSize;
  final String title;
  final String subTitle;
  DetalleConsulta(this.icon, this.iconSize, this.title, this.subTitle);
}

class InformacionConsulta extends StatefulWidget {
  const InformacionConsulta({super.key});

  @override
  State<InformacionConsulta> createState() => _InformacionConsultaState();
}

class _InformacionConsultaState extends State<InformacionConsulta> {
  List<DetalleConsulta> simulacionAPI = <DetalleConsulta>[
    DetalleConsulta(FontAwesomeIcons.cookie, 19, 'Primera Consulta', '\$800'),
    DetalleConsulta(
        Icons.location_on_outlined, 22, 'Distancia aprox.', '250 m'),
    DetalleConsulta(FontAwesomeIcons.calendarCheck, 19, 'Fecha Disponible',
        '21 de enero 2022'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          for (var i = 0; i < simulacionAPI.length; i++) ...[
            Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    FaIcon(
                      simulacionAPI[i].icon,
                      color: FlutterFlowTheme.of(context).primaryColor,
                      size: simulacionAPI[i].iconSize,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        simulacionAPI[i].title,
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Montserrat',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                            ),
                      ),
                      Text(
                        simulacionAPI[i].subTitle,
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Montserrat',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ]
        ],
      ),
    );
  }
}
