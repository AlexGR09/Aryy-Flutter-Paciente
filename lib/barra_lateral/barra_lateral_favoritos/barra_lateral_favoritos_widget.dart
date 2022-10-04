import '../../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

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
