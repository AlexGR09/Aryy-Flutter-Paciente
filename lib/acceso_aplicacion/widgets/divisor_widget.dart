import './divisor_linea.dart';
import '../../../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

class Divisor extends StatefulWidget {
  const Divisor({super.key, required this.text});

  final String text;

  @override
  State<Divisor> createState() => _DivisorState();
}

class _DivisorState extends State<Divisor> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(top: 10, bottom: 30),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const DivisorLinea(),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                child: Text(
                  widget.text,
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w300,
                      ),
                ),
              ),
              const DivisorLinea(),
            ],
          )
        ],
      ),
    );
  }
}
