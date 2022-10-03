import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BarraLateralFavoritosWidget extends StatefulWidget {
  const BarraLateralFavoritosWidget({Key? key}) : super(key: key);

  @override
  _BarraLateralFavoritosWidgetState createState() =>
      _BarraLateralFavoritosWidgetState();
}

class _BarraLateralFavoritosWidgetState
    extends State<BarraLateralFavoritosWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
    );
  }
}
