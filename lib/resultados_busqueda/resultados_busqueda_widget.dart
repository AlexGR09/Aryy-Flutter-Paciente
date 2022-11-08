import 'componentes/barra_busqueda.dart';
import 'componentes/botones_filtro_busqueda_widget.dart';
import 'componentes/miniatura_doctor.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../next_page_tmp/switch_modo_oscuro.dart';
import 'package:flutter/material.dart';

class ResultadosBusqueda extends StatefulWidget {
  const ResultadosBusqueda({Key? key}) : super(key: key);

  @override
  _ResultadosBusquedaState createState() => _ResultadosBusquedaState();
}

class _ResultadosBusquedaState extends State<ResultadosBusqueda> {
  final TextEditingController inputTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: GlobalKey<ScaffoldState>(),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        automaticallyImplyLeading: true,
        toolbarHeight: 80,
        leading: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              borderWidth: 1,
              buttonSize: 60,
              icon: Icon(
                Icons.arrow_back_outlined,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 30,
              ),
              onPressed: () {
                print('IconButton pressed ...');
              },
            )),
        title: BarraBusqueda(inputTextController: inputTextController),
        actions: [
//---------------------------  Alternar entre modo oscuro (solo para pruebas de responsive)  -----------------------------------------------------------------------------------------------------------------
          Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 6, 0),
              child: DarkModeIcon(context)),
//--------------------------------------------------------------------------------------------------------------------------------------------
        ],
        centerTitle: false,
        elevation: 0,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
            child: Column(mainAxisSize: MainAxisSize.max, children: [
//---------------------------  Botones de filtro  -----------------------------------------------------------------------------------------------------------------
              const BotonesFiltroBusqueda(),
              Expanded(
                  child: ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  for (var i = 0; i < 4; i++) ...[
                    Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 35),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
//---------------------------  Información del Doctor  -----------------------------------------------------------------------------------------------------------------
                            const InformacionMiniaturaDoctor(),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                FFButtonWidget(
                                  onPressed: () {
                                    print('Llamar_ahora pressed ...');
                                  },
                                  text: 'Llamar ahora',
                                  options: FFButtonOptions(
                                    width: 180,
                                    height: 50,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .subtitle2
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                          fontWeight: FontWeight.normal,
                                        ),
                                    borderSide: const BorderSide(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                                FFButtonWidget(
                                  onPressed: () {
                                    //print('Ver_horarios pressed ...');
                                    Navigator.pushNamed(
                                        context, "agendar_cita");
                                  },
                                  text: 'Ver horarios',
                                  options: FFButtonOptions(
                                    width: 180,
                                    height: 50,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .subtitle2
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          fontWeight: FontWeight.normal,
                                        ),
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ))
                  ]
                ],
              ))
            ]),
          ),
        ),
      ),
    );
  }
}
