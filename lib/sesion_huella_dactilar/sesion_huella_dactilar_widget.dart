import '../flutter_flow/flutter_flow_theme.dart';
import '../next_page_tmp/switch_modo_oscuro.dart';
import '../styles/my_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SesionHuellaDactilarWidget extends StatefulWidget {
  const SesionHuellaDactilarWidget({Key? key}) : super(key: key);

  @override
  _SesionHuellaDactilarWidgetState createState() =>
      _SesionHuellaDactilarWidgetState();
}

class _SesionHuellaDactilarWidgetState
    extends State<SesionHuellaDactilarWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF7900FF),
        toolbarHeight: 80,
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        title: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(22, 0, 0, 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "Registrarse");
                },
                child: SvgPicture.asset(
                  REGRESAR,
                  width: 30,
                  height: 30,
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        ),
        actions: [
//---------------------------  Alternar entre modo oscuro (solo para pruebas de responsive)  -----------------------------------------------------------------------------------------------------------------
          Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
              child: DarkModeIcon(context)),
//--------------------------------------------------------------------------------------------------------------------------------------------
        ],
      ),
      backgroundColor: Color(0xFF7900FF),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      ARYY_LOGO_BLANCO,
                      width: 150,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 90, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Usuario25',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Montserrat',
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            fontSize: 16,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        SvgPicture.asset(
                          HUELLA_BLANCO,
                          width: 80,
                          height: 80,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                          child: Text(
                            'Entrar con\nhuella digital',
                            textAlign: TextAlign.center,
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Montserrat',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      fontSize: 16,
                                    ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(22, 90, 22, 20),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      LLAVE,
                      width: 35,
                      height: 35,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Text(
                        'Acceder con contraseña',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Montserrat',
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
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
