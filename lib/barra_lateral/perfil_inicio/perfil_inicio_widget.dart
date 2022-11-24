import '../../_aryy_common_components/widgets/appbar/widgets/modo_oscuro.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_widgets.dart';
import '../../styles/my_icons.dart';
import './simulacion_API/simulacionAPI_perfil_inicio.dart';
//import '../next_page_tmp/switch_modo_oscuro.dart';
import 'package:flutter/material.dart';

import 'componentes/column_historial.dart';
import 'componentes/row_historial.dart';

class BarraLateralPerfil1Widget extends StatefulWidget {
  const BarraLateralPerfil1Widget({Key? key}) : super(key: key);

  @override
  _BarraLateralPerfil1WidgetState createState() =>
      _BarraLateralPerfil1WidgetState();
}

class _BarraLateralPerfil1WidgetState extends State<BarraLateralPerfil1Widget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: true,
          toolbarHeight: 0,
          actions: [
//---------------------------  Alternar entre modo oscuro (solo para pruebas de responsive)  -----------------------------------------------------------------------------------------------------------------
            Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 6, 0),
                child: DarkModeIcon()),
//--------------------------------------------------------------------------------------------------------------------------------------------
          ],
          centerTitle: false,
          elevation: 0,
        ),
        body: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child: Stack(children: [
                      Align(
                        child: Image.asset(
                          WP_PERFIL,
                          width: MediaQuery.of(context).size.width,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Align(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0, 100, 0, 0),
                          child: Material(
                            color: Colors.transparent,
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Image.asset(
                                AVATAR,
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ])),
                  ]),
//---------------------------  Detalles usuario  -----------------------------------------------------------------------------------------------------------------
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Fulanito Detal',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Montserrat',
                            fontSize: 30,
                          ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 7, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '🇲🇽  ',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w300,
                            fontSize: 18,
                          ),
                    ),
                    Text(
                      'Tuxtla Gutierrez, Chis',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w300,
                            fontSize: 18,
                          ),
                    ),
                  ],
                ),
              ),
              Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 30, 0, 30),
                  child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              20, 0, 20, 0),
                          child: FFButtonWidget(
                            onPressed: () {
                              Navigator.pushNamed(context, "barra_perfil");
                            },
                            text: 'Editar Perfil',
                            options: FFButtonOptions(
                              width: 130,
                              height: 60,
                              color: FlutterFlowTheme.of(context).primaryColor,
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Montserrat',
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                              borderSide: const BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ))
                      ])),
//---------------------------  Body  -----------------------------------------------------------------------------------------------------------------

              // ListView(
              Expanded(
                  child: Column(mainAxisSize: MainAxisSize.max, children: [
                Expanded(
                    child: ListView(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        children: [
                      HistorialColumn(
                          data: simulacionHistorialCitas,
                          title: 'Historial de citas'),
                      HistorialColumn(
                          data: simulacionHistorialCompras,
                          title: 'Historial de compras'),
                      HistorialColumn(
                          data: simulacionHistorialAanalisis,
                          title: 'Historial de análisis')
                    ]))
              ]))
            ]));
  }
}
