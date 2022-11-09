import '../../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

class DatosCita extends StatefulWidget {
  const DatosCita(
      {super.key, required this.titulo, required this.icono, this.subTitulo});

  final String titulo;
  final IconData icono;
  final String? subTitulo;

  @override
  State<DatosCita> createState() => _DatosCitaState();
}

class _DatosCitaState extends State<DatosCita> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(top: 5, bottom: 5),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center, // icon top
        children: [
//---------------------------  Icono  -----------------------------------------------------------------------------------------------------------------
          Padding(
            padding: const EdgeInsetsDirectional.only(end: 10),
            child: Icon(
              widget.icono,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 35,
            ),
          ),
//---------------------------  Titulo y subtitulo  -----------------------------------------------------------------------------------------------------------------
          Column(
            crossAxisAlignment: CrossAxisAlignment.start, // text
            children: [
              Center(
                  child: Text(
                widget.titulo,
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.normal,
                      fontSize: 18,
                    ),
              )),
              if (widget.subTitulo != '')
                Text(
                  '${widget.subTitulo}',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Montserrat',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontWeight: FontWeight.w200,
                        fontSize: 15,
                      ),
                )
            ],
          ),
        ],
      ),
    );
  }
}
