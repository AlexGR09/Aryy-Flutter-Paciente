import '../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

class CedulaProfesional extends StatefulWidget {
  const CedulaProfesional({super.key});

  @override
  State<CedulaProfesional> createState() => _CedulaProfesionalState();
}

class _CedulaProfesionalState extends State<CedulaProfesional> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 45, 0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Ced. Prof. 1234567',
            style: FlutterFlowTheme.of(context).bodyText1.override(
                  fontFamily: 'Montserrat',
                  color: FlutterFlowTheme.of(context).secondaryText,
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
            child: Text(
              'Ced. Esp. 1234567',
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Montserrat',
                    color: FlutterFlowTheme.of(context).secondaryText,
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
