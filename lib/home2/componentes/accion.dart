import '../../flutter_flow/flutter_flow_theme.dart';
import '../../styles/my_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Accion {
  final String title;
  final String subtitle;
  final String iconName;
  final List<Color> colorGradient;
  Accion(this.title, this.subtitle, this.iconName, this.colorGradient);
}

class AccionWidget extends StatefulWidget {
  const AccionWidget({super.key, required this.accion});

  final Accion accion;
  @override
  State<AccionWidget> createState() => _AccionWidgetState();
}

class _AccionWidgetState extends State<AccionWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
          child: Material(
            color: Colors.transparent,
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              width: 150,
              height: 90,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    widget.accion.colorGradient[0],
                    widget.accion.colorGradient[1]
                  ],
                  stops: [0, 1],
                  begin: const AlignmentDirectional(0, -1),
                  end: const AlignmentDirectional(0, 1),
                ),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        RECETAS,
                        width: 40,
                        height: 40,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Surtir',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                              fontFamily: 'Montserrat',
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                            ),
                      ),
                      Text(
                        'receta',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Montserrat',
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                            ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
