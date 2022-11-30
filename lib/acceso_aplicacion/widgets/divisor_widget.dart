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
  static const double defaultMargin = 30;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(
          defaultMargin, 10, defaultMargin, 30),
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
                padding: const EdgeInsetsDirectional.only(
                    start: defaultMargin, end: defaultMargin),
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
