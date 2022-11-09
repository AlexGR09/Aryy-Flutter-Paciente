import './datos_cita_widget.dart';
import './detalles_doctor_widget.dart';
import '../simulacionAPI/simulacion_proxcitas_api.dart';
import '../../flutter_flow/flutter_flow_icon_button.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TarjetaProximaCita extends StatefulWidget {
  const TarjetaProximaCita({super.key});

  @override
  State<TarjetaProximaCita> createState() => _TarjetaProximaCitaState();
}

class _TarjetaProximaCitaState extends State<TarjetaProximaCita> {
  List<IconData> iconosDatosConsultorio = <IconData>[
    Icons.person_outline_sharp,
    Icons.home_work_outlined,
    Icons.calendar_today_outlined,
    Icons.access_time,
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(40, 10, 40, 20),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
//---------------------------  Informacion del Doctor  -----------------------------------------------------------------------------------------------------------------
            const InformacionCitaDoctor(),
            Divider(
              height: 20,
              thickness: 1,
              indent: 0,
              endIndent: 10,
              color: FlutterFlowTheme.of(context).secondaryText,
            ),
//---------------------------  Datos de la cita  -----------------------------------------------------------------------------------------------------------------
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Datos de la cita',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Montserrat',
                        color: FlutterFlowTheme.of(context).primaryColor,
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 30,
                      borderWidth: 1,
                      buttonSize: 60,
                      icon: FaIcon(
                        FontAwesomeIcons.edit,
                        color: FlutterFlowTheme.of(context).primaryText,
                        size: 20,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                  ],
                ),
              ],
            ),
//---------------------------  Informacion del consultorio  -----------------------------------------------------------------------------------------------------------------
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start, // content
              children: [
                Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start, // Text alignment
                  children: [
                    for (var i = 0;
                        i < simulacionDatosConsultorio.length;
                        i++) ...[
                      DatosCita(
                          titulo: simulacionDatosConsultorio[i].titulo,
                          subTitulo: simulacionDatosConsultorio[i].subTitulo,
                          icono: iconosDatosConsultorio[i]),
                    ]
                  ],
                )
              ],
            ),
          ],
        ));
  }
}
