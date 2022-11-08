import '../simulacion_API/simulacion_metodo_pago.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';

enum MetodoPago { pagoAnticipado, pagoEnConsultorio }

class BotonMetodoPago extends StatefulWidget {
  const BotonMetodoPago({
    required this.metodoPagoElegido,
    Key? key,
  }) : super(key: key);

  final MetodoPago metodoPagoElegido;

  @override
  State<BotonMetodoPago> createState() => _BotonMetodoPagoState();
}

class _BotonMetodoPagoState extends State<BotonMetodoPago> {
  late SimulacionMetodoPago metodoPago;

  SimulacionMetodoPago llamarAPI(MetodoPago metodoPago) {
    switch (metodoPago) {
      case MetodoPago.pagoAnticipado:
        return SimulacionMetodoPago(
            "Pago Anticipado",
            600,
            FlutterFlowTheme.of(context).primaryColor,
            Colors.white,
            Colors.transparent);
      default:
        return SimulacionMetodoPago(
            "En consultorio",
            800,
            FlutterFlowTheme.of(context).primaryBackground,
            FlutterFlowTheme.of(context).secondaryText,
            FlutterFlowTheme.of(context).secondaryText);
    }
  }

  @override
  Widget build(BuildContext context) {
    metodoPago = llamarAPI(widget.metodoPagoElegido);
    return Expanded(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
            child: Text(
              metodoPago.titlulo,
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Montserrat',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
            child: FFButtonWidget(
              onPressed: () {
                print('Button pressed ...');
              },
              text: '\$${metodoPago.costo}',
              options: FFButtonOptions(
                width: 180,
                height: 60,
                color: metodoPago.colorBotonFondo,
                textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                      fontFamily: 'Montserrat',
                      color: metodoPago.colorTextoSecundario,
                    ),
                borderSide: BorderSide(
                  color: metodoPago.colorBotonBorde,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
