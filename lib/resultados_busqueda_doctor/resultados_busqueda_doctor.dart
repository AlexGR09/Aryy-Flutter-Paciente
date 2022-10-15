import '../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SimulacionAPI {
  final IconData icono;
  final String textTitle;
  final List<String> textSecondary;
  late String? textLink;
  SimulacionAPI(this.icono, this.textTitle, this.textSecondary, this.textLink);
}

List<SimulacionAPI> data = <SimulacionAPI>[
  SimulacionAPI(
      Icons.location_on_outlined,
      "6391A Elgin St. Celina, Delaware 10299",
      ["Delaware, EEUU"],
      "Ver en Maps"),
  SimulacionAPI(FontAwesomeIcons.universalAccess, "Medidas de accesibilidad",
      ["Estacionamiento", "Rampa"], null),
  SimulacionAPI(
      FontAwesomeIcons.applePay,
      "Formas de pago",
      ["Efectivo", "Tarjeta de crédito", "Tarjeta de débito", "Aseguradora"],
      "Ver si acepta mi aseguradora"),
  SimulacionAPI(
      Icons.child_care,
      "Atiende pacientes",
      [
        "Reciuén nacidos",
        "Niños",
        "Adultos jóvenes",
        "Adultos mediana edad",
        "Adultos tercera edad"
      ],
      null)
];

List<Padding> InformacionConsultorios(BuildContext context) {
  return <Padding>[
    Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            'Consultorio 1',
            style: FlutterFlowTheme.of(context).bodyText1.override(
                  fontFamily: 'Montserrat',
                  fontSize: 29,
                ),
          ),
        ],
      ),
    ),
    for (var i = 0; i < data.length; i++) ...[
      Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    data[i].icono,
                    color: FlutterFlowTheme.of(context).primaryColor,
                    size: 28,
                  ),
                ],
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data[i].textTitle,
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Montserrat',
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                      ),
                ),
                for (int j = 0; j < data[i].textSecondary.length; j++) ...[
                  Text(
                    data[i].textSecondary[j],
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Montserrat',
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                  )
                ],
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                  child: data[i].textLink != null
                      ? Text(
                          data[i].textLink ?? "",
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Montserrat',
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                        )
                      : null,
                ),
              ],
            ),
          ],
        ),
      )
    ]
  ];
}
