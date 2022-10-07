import 'package:aryy_front/home_page/home_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'dart:async';
import 'flutter_flow/flutter_flow_theme.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  var scaffoldKey;

  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => HomePageWidget())));
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

//------------------------- LOGO ARYY--------------------------------------------
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: SafeArea(
        child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 100),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
                        child: SvgPicture.network(
                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/aryy-version1-2ra5ai/assets/tf0gio9xuw5u/UI_Aryy_LOGOTIPO_SF.svg',
                          width: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ),

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

//--------------------- TEXTO -------------------------------------------
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 150, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'POWERED BY',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              fontSize: 7,
                              fontWeight: FontWeight.w500,
                            ),
                      )
                    ],
                  ),
                ),

//-------------------------- LOGO MECAHSOFT -------------------------------------------------------
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 1),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.network(
                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/aryy-version1-2ra5ai/assets/ts70rndl20a4/MECAHSOFT_(LOGO)_LOGOTIPO.svg',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
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

/*class _SplashScreenState extends State<SplashScreen> {
  var scaffoldKey;

  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => HomePageWidget())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                HexColor("#FFFFFF"),
                HexColor("#FFFFFF"),
              ]),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                  child: SvgPicture.asset(
                    'assets/logotipos/aryy_logo_morado.svg',
                    // height: 200.0,
                    width: 200.0,
                  ),
                ),

                // CIRCULO DE PORGRESO
                CircularProgressIndicator(
                  valueColor:
                      AlwaysStoppedAnimation<Color>(HexColor("#7900ff")),
                ),
              ],
            ),

            //LOGO MECAHSOFT
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  MECAHSOFT_LOGO,
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              ],
            ),
            /*CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(HexColor("#7900ff")),
            ),*/
          ],
        ),
      ),
    );
  }
}*/
