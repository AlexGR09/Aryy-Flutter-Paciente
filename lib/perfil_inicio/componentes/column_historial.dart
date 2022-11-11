import './row_historial.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../simulacion_API/simulacionAPI_perfil_inicio.dart';
import 'package:flutter/material.dart';

class HistorialColumn extends StatefulWidget {
  const HistorialColumn({super.key, required this.data, required this.title});

  final String title;
  final List<Historial> data;

  @override
  State<HistorialColumn> createState() => _HistorialColumnState();
}

class _HistorialColumnState extends State<HistorialColumn> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        ListTile(
          title: Text(widget.title,
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Montserrat',
                    fontSize: 21,
                    fontWeight: FontWeight.w500,
                  )),
          tileColor: FlutterFlowTheme.of(context).primaryBackground,
          dense: false,
          contentPadding: const EdgeInsetsDirectional.fromSTEB(50, 0, 0, 8),
        ),
        for (var i = 0; i < widget.data.length; i++) ...[
          HistorialRow(data: widget.data[i])
        ]
      ],
    );
  }
}
