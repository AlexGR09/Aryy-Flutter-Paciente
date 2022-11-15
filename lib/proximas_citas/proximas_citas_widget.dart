import './componentes/tarjeta_cita_widget.dart';
import '../aryy_common_components/appbar/appbar_widget.dart';
import '../barra_navegacion_inferior/barra_de_navegacion.dart';
import '../flutter_flow/app_state.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/togleIcon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProximasCitas extends StatefulWidget {
  const ProximasCitas({Key? key}) : super(key: key);

  @override
  _ProximasCitasState createState() => _ProximasCitasState();
}

class _ProximasCitasState extends State<ProximasCitas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: GlobalKey<ScaffoldState>(),
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: PreferredSize(
          preferredSize: const Size(100, 50),
          child: AryyAppBar(
            leading: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
              child: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30,
                borderWidth: 1,
                buttonSize: 60,
                icon: Icon(
                  Icons.arrow_back,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 30,
                ),
                onPressed: () async {
                  Navigator.pushNamed(context, "home2_inicio");
                },
              ),
            ),
            title: Row(
              children: [
                Text('Citas',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontWeight: FontWeight.w300,
                        fontFamily: 'Montserrat',
                        fontSize: 19))
              ],
            ),
            actions: Padding(
              padding: const EdgeInsetsDirectional.only(end: 10),
              child: ToggleIcon(
                onPressed: () async {
                  setState(() {
                    FFAppState().toggleVar = !FFAppState().toggleVar;
                  });
                },
                value: FFAppState().toggleVar,
                onIcon: const Icon(
                  FontAwesomeIcons.bellSlash,
                  color: Colors.black,
                  size: 28,
                ),
                offIcon: Icon(
                  FontAwesomeIcons.bell,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 28,
                ),
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: DefaultTabController(
                    length: 2,
                    initialIndex: 0,
                    child: Column(
                      children: [
//---------------------------  Tab bar  -----------------------------------------------------------------------------------------------------------------
                        TabBar(
                          labelColor: FlutterFlowTheme.of(context).primaryText,
                          labelStyle: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                  fontFamily: 'Montserrat',
                                  color: const Color(0xC586898C),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 18),
                          indicatorColor:
                              FlutterFlowTheme.of(context).primaryColor,
                          tabs: const [
                            Padding(
                                padding: EdgeInsets.all(12),
                                child: Tab(
                                  text: 'Próximas',
                                )),
                            Tab(
                              text: 'Anteriores',
                            ),
                          ],
                        ),
//---------------------------  Tab View  -----------------------------------------------------------------------------------------------------------------
                        Expanded(
                          child: TabBarView(
                            children: [
                              ListView(
                                  padding: EdgeInsets.zero,
                                  scrollDirection: Axis.vertical,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: const [
                                        TarjetaCita(
                                          esProximaCita: true,
                                        ),
                                        TarjetaCita(
                                          esProximaCita: true,
                                        ),
                                        TarjetaCita(
                                          esProximaCita: true,
                                        ),
                                      ],
                                    ),
                                  ]),
//---------------------------  Body Tab [1]: Anteriores  -----------------------------------------------------------------------------------------------------------------
                              ListView(
                                  padding: EdgeInsets.zero,
                                  scrollDirection: Axis.vertical,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: const [
                                        TarjetaCita(esProximaCita: false),
                                        TarjetaCita(esProximaCita: false),
                                        TarjetaCita(esProximaCita: false),
                                      ],
                                    ),
                                  ]),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
//------------------------------------- BARRA DE NAVEGACION -------------------------------------------------------------------------------------------------------------------------
        bottomNavigationBar: const BarraDeNavegacion());
  }
}
