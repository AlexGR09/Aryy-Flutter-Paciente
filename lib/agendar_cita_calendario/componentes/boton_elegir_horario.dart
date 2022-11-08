import '../simulacionAPI/simulacion_agendar_cita.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';

class BotonAgendar {
  final Color backgroundColor;
  final Color textcolor;
  BotonAgendar(this.backgroundColor, this.textcolor);
}

class BotonElegirHorario extends StatefulWidget {
  const BotonElegirHorario({
    required this.simulacionCita,
    Key? key,
  }) : super(key: key);

  final APISimulation simulacionCita;

  @override
  State<BotonElegirHorario> createState() => _BotonElegirHorarioState();
}

class _BotonElegirHorarioState extends State<BotonElegirHorario> {
  late bool isPressed = false;
  late BotonAgendar botonAgendar;

  BotonAgendar estiloBoton(Disponibilidad disponibilidadDeCita) {
    switch (disponibilidadDeCita) {
      case Disponibilidad.disponible:
        // custom pink background color
        return BotonAgendar(const Color.fromARGB(255, 245, 237, 255),
            FlutterFlowTheme.of(context).primaryColor);
      default:
        return BotonAgendar(FlutterFlowTheme.of(context).primaryBackground,
            FlutterFlowTheme.of(context).primaryText);
    }
  }

  @override
  Widget build(BuildContext context) {
    botonAgendar = estiloBoton(widget.simulacionCita.disponibilidad);
    return Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
        child: FFButtonWidget(
          onPressed: () {
            print('${widget.simulacionCita.hora} pressed ...');
            setState(() {
              isPressed = widget.simulacionCita.disponibilidad ==
                      Disponibilidad.disponible
                  ? !isPressed
                  : false;
            });
          },
          text: widget.simulacionCita.hora,
          options: FFButtonOptions(
            width: 90,
            height: 45,
            elevation: 0,
            color: !isPressed
                ? botonAgendar.backgroundColor
                : FlutterFlowTheme.of(context).primaryColor,
            textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                fontFamily: 'Montserrat',
                color: !isPressed
                    ? botonAgendar.textcolor
                    : FlutterFlowTheme.of(context).primaryBackground,
                fontSize: 19,
                fontWeight: FontWeight.w500,
                decoration: widget.simulacionCita.disponibilidad ==
                        Disponibilidad.ocupada
                    ? TextDecoration.lineThrough
                    : TextDecoration.none),
            borderSide: const BorderSide(
              color: Colors.transparent,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(3),
          ),
        ));
  }
}
