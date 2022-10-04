import '../../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

class BarraLateralMetodopagoWidget extends StatefulWidget {
  const BarraLateralMetodopagoWidget({Key? key}) : super(key: key);

  @override
  _BarraLateralMetodopagoWidgetState createState() =>
      _BarraLateralMetodopagoWidgetState();
}

class _BarraLateralMetodopagoWidgetState
    extends State<BarraLateralMetodopagoWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Page Title',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [],
          ),
        ),
      ),
    );
  }
}
