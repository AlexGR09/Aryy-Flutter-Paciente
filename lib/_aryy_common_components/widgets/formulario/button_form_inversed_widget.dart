import '../../../../flutter_flow/flutter_flow_theme.dart';
import '../../../../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';

// Botón de formularios inversos

class BotonFormularioInverso extends StatefulWidget {
  const BotonFormularioInverso(
      {super.key, required this.text, required this.onPressed});

  final String text;
  final VoidCallback onPressed;

  @override
  State<BotonFormularioInverso> createState() => _BotonFormularioInversoState();
}

class _BotonFormularioInversoState extends State<BotonFormularioInverso> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(bottom: 20),
      child: FFButtonWidget(
        onPressed: widget.onPressed,
        text: widget.text,
        options: FFButtonOptions(
          width: 300,
          height: 55,
          color: Colors.white,
          textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                fontFamily: 'Montserrat',
                color: FlutterFlowTheme.of(context).primaryColor,
                fontWeight: FontWeight.w500,
              ),
          borderSide: const BorderSide(
            color: Colors.transparent,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
