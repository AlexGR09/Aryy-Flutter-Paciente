import '../../../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

class DivisorLinea extends StatefulWidget {
  const DivisorLinea({super.key});

  @override
  State<DivisorLinea> createState() => _DivisorLineaState();
}

class _DivisorLineaState extends State<DivisorLinea> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              height: 1,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).lineColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
