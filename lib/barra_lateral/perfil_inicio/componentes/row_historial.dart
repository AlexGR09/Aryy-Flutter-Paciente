import '../../../_aryy_common_components/repository/categoria_medica.dart';
import '../../../flutter_flow/flutter_flow_theme.dart';
import '../simulacion_API/simulacionAPI_perfil_inicio.dart';
import 'package:flutter/material.dart';

class HistorialRow extends StatefulWidget {
  HistorialRow({Key? key, required this.data}) : super(key: key);

  final Historial data;

  @override
  State<HistorialRow> createState() => _HistorialRowState();
}

class _HistorialRowState extends State<HistorialRow> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(35, 0, 30, 25),
          child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      // SvgPicture.asset(
                      //   FILTRO_ESPECIALISTA,
                      //   width: 30,
                      //   height: 30,
                      //   fit: BoxFit.cover,
                      // ),
                      CircleAvatar(
                        backgroundColor:
                            categoriaMedica[widget.data.clasificacionMedica]
                                .colorFondo,
                        radius: 23,
                        child: Icon(
                          categoriaMedica[widget.data.clasificacionMedica]
                              .icono,
                          color: Colors.white,
                          size: 23,
                        ),
                      )
                    ]),
                Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.data.titulo,
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Montserrat',
                              fontSize: 19,
                              fontWeight: FontWeight.w300,
                            ),
                      ),
                      Text(
                        widget.data.subTitulo,
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Montserrat',
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                            ),
                      )
                    ]),
                Text(
                  '21/12/21',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w300,
                        fontSize: 19,
                      ),
                )
              ])),
    ]);
//--------------------------------------------------------------------------------------------------------------------------------------------
  }
}
