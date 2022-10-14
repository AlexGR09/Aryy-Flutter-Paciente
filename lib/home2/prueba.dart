import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

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
      backgroundColor: Color(0xFF7900FF),
      appBar: AppBar(
        backgroundColor: Color(0xFF7900FF),
        automaticallyImplyLeading: false,
        title: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(22, 0, 0, 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () async {
                  context.pushNamed('Registrarse');
                },
                child: SvgPicture.network(
                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/aryy-version1-2ra5ai/assets/cnxroa6lehu0/UI_MOVIL_REGRESAR.svg',
                  width: 30,
                  height: 30,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
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
                    SvgPicture.network(
                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/aryy-version1-2ra5ai/assets/japd5xhu2u6j/LOGOTIPO_BCO_LOGOTIPO_SF.svg',
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
                          'assets/images/ICON_HUELLA-2.svg',
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
                child: InkWell(
                  onTap: () async {
                    context.pushNamed('iniciarsesion');
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.network(
                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/aryy-version1-2ra5ai/assets/gd0tu31q5ntm/ICON_LLAVE.svg',
                        width: 35,
                        height: 35,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                        child: Text(
                          'Acceder con contraseña',
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
