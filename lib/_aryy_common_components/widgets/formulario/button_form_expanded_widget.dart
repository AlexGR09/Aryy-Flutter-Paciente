import './button_form_widget.dart';
import 'package:flutter/material.dart';

class BotonFormularioExpandido extends StatefulWidget {
  const BotonFormularioExpandido(
      {super.key, required this.text, required this.onPressed});

  final String text;
  final VoidCallback onPressed;

  @override
  State<BotonFormularioExpandido> createState() =>
      _BotonFormularioExpandidoState();
}

class _BotonFormularioExpandidoState extends State<BotonFormularioExpandido> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 16, end: 16),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: BotonFormulario(
              text: widget.text,
              onPressed: widget.onPressed,
            ),
          ),
        ],
      ),
    );
  }
}
