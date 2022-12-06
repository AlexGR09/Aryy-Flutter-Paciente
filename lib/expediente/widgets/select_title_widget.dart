import '../../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

class SelectTitle extends StatefulWidget {
  const SelectTitle({super.key, required this.text});

  final String text;

  @override
  State<SelectTitle> createState() => _SelectTitleState();
}

class _SelectTitleState extends State<SelectTitle> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: FlutterFlowTheme.of(context).bodyText1.override(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.normal,
          ),
    );
  }
}
