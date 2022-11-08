//import 'package:aryy_version8/index.dart';
//import 'package:aryy_version8/launch_inicioapp/home_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'dart:async';
import '../flutter_flow/flutter_flow_theme.dart';
import 'confirmacion_de_cita_widget.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  var scaffoldKey;

  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => ConfirmacionDeCitaWidget())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: SafeArea(
        child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
//-------------------------- CIRCULO DE PROGRESO -----------------------------------------------
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircularProgressIndicator(
                        valueColor:
                            AlwaysStoppedAnimation<Color>(HexColor("#7900ff")),
                      ),
                    ],
                  ),
                ),
              ],
            ) //.animated([animationsMap['columnOnPageLoadAnimation']!]),
            ),
      ),
    );
  }
}
