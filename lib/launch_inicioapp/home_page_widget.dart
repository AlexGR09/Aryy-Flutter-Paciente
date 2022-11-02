import 'package:aryy_front/styles/my_icons.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// Responsive y modo oscuro
import '../next_page_tmp/switch_modo_oscuro.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);
  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  PageController? pageViewController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        toolbarHeight: 80,
        automaticallyImplyLeading: true,
//---------------------------  Alternar entre modo oscuro (solo para pruebas de responsive)  -----------------------------------------------------------------------------------------------------------------
        title: DarModeSwitch(context),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 30, 30, 0),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, "registrarse_iniciosesion");
              },
              child: Text(
                'Omitir',
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Montserrat',
                      color: const Color(0xC5B4B4B4),
                    ),
              ),
            ),
          ),
        ],
        elevation: 0,
      ),

//--------------------------------------------------------------------------------------------------------------------------------------------------------------
//--------------------------- PRIMER PAGE VIEW -----------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------------------------------------------------------

      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.6,
                      child: Stack(
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 30),
                            child: PageView(
                              controller: pageViewController ??=
                                  PageController(initialPage: 0),
                              scrollDirection: Axis.horizontal,
                              children: [
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 20),
                                            child: Image.asset(
                                              LAUNCH_ESPECIALISTAS, //IMAGEN
                                              width: 350,
                                              height: 300,
                                              fit: BoxFit.fitWidth,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            22, 0, 22, 8),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Text(
                                                'Encuentra a un especialista de\nconfianza, agenda una cita y genera puntos',
                                                textAlign: TextAlign.center,
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .title2
                                                    .override(
                                                      fontFamily: 'Montserrat',
                                                      color: Color(0xFFB380FF),
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 20),
                                            child: Image.asset(
                                              LAUNCH_PASTILLERO,
                                              width: 300,
                                              height: 300,
                                              fit: BoxFit.fitWidth,
                                            ),
                                          ),
                                        ],
                                      ),

//--------------------------------------------------------------------------------------------------------------------------------------------------------------
//---------------------------------------------- SEGUNDO PAGE VIEW ---------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------------------------------------------------------
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 0, 20, 8),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Text(
                                                'Mantén un control de tus\nmedicamentos con nuestro\npastillero',
                                                textAlign: TextAlign.center,
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .title2
                                                    .override(
                                                      fontFamily: 'Montserrat',
                                                      color: Color(0xFFB380FF),
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

//----------------------------------------------------------------------------------------------------------------------------------------------------------------
//------------------------------------------ TERCER PAGE VIEW ---------------------------------------------------------------------------------------------------
//----------------------------------------------------------------------------------------------------------------------------------------------------------------
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 30, 0, 30),
                                            child: Image.asset(
                                              LAUNCH_LABORATORIOS, //IMAGEN
                                              width: 300,
                                              height: 250,
                                              fit: BoxFit.fitWidth,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 0, 20, 8),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Text(
                                                'Busca y cotiza tus an+alisi\nclinicos de laboratorio en un\nsolo lugar',
                                                textAlign: TextAlign.center,
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .title2
                                                    .override(
                                                      fontFamily: 'Montserrat',
                                                      color: Color(0xFFB380FF),
                                                      fontSize: 18,
                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//------------------------------------- CUARTO PAGE VIEW -------------------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                                Container(
                                  width: 100,
                                  height: 100,
                                  decoration: BoxDecoration(),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 30, 0, 30),
                                            child: Image.asset(
                                              LAUNCH_MEDICINA, //IMAGEN
                                              width: 300,
                                              height: 250,
                                              fit: BoxFit.fitWidth,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            20, 0, 20, 8),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Text(
                                                'Surte tu receta médica o de\nlibre venta y obtén\nrecompensas',
                                                textAlign: TextAlign.center,
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .title2
                                                    .override(
                                                      fontFamily: 'Montserrat',
                                                      color: Color(0xFFB380FF),
                                                      fontSize: 18,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(0, 1),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                              child: SmoothPageIndicator(
                                controller: pageViewController ??=
                                    PageController(initialPage: 0),
                                count: 4,
                                axisDirection: Axis.horizontal,
                                onDotClicked: (i) {
                                  pageViewController!.animateToPage(
                                    i,
                                    duration: const Duration(milliseconds: 500),
                                    curve: Curves.ease,
                                  );
                                },
                                effect: const ExpandingDotsEffect(
                                  expansionFactor: 2,
                                  spacing: 8,
                                  radius: 16,
                                  dotWidth: 16,
                                  dotHeight: 4,
                                  dotColor: Color(0xC5D9D9D9),
                                  activeDotColor: Color(0xFFB380FF),
                                  paintStyle: PaintingStyle.fill,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                      child: FFButtonWidget(
                        onPressed: () {
                          Navigator.pushNamed(context, "Registrarse");
                          //context.pushNamed('Registrarse');
                        },
                        text: 'Registrarme',
                        options: FFButtonOptions(
                          width: 200,
                          height: 50,
                          color: Color(0xFF7900FF),
                          textStyle: FlutterFlowTheme.of(context)
                              .subtitle1
                              .override(
                                fontFamily: 'Montserrat',
                                color:
                                    FlutterFlowTheme.of(context).primaryBtnText,
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                          elevation: 2,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FFButtonWidget(
                      onPressed: () {
                        Navigator.pushNamed(context, "iniciarsesion");
                      },
                      text: 'Iniciar sesión',
                      options: FFButtonOptions(
                        width: 200,
                        height: 50,
                        color: Color(0xFF7900FF),
                        textStyle: FlutterFlowTheme.of(context)
                            .subtitle1
                            .override(
                              fontFamily: 'Montserrat',
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                        elevation: 2,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
