import '../../../../flutter_flow/flutter_flow_theme.dart';
import '../../../../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';

// Botón de formularios color: primary color

class BotonFormulario extends StatefulWidget {
  const BotonFormulario(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.isLoading});

  final bool isLoading;
  final String text;
  final VoidCallback onPressed;

  @override
  State<BotonFormulario> createState() => _BotonFormularioState();
}

class _BotonFormularioState extends State<BotonFormulario> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(bottom: 20, top: 20),
      child: FFButtonWidget(
        icon: widget.isLoading
            ? Container(
                width: 24,
                height: 24,
                padding: const EdgeInsets.all(2.0),
                child: const CircularProgressIndicator(
                  color: Colors.white,
                  strokeWidth: 3,
                ),
              )
            : null,
        onPressed: widget.onPressed,
        text: widget.isLoading ? '' : widget.text,
        options: FFButtonOptions(
          width: 300,
          height: 55,
          color: FlutterFlowTheme.of(context).primaryColor,
          textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                fontFamily: 'Montserrat',
                color: Colors.white,
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
