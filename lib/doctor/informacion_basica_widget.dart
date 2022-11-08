import '../doctor/cedula_profesional_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class InformacionBasicaDoctor extends StatelessWidget {
  final Function callbackFunction;
  final bool mostrarCedulaProfesional;
  const InformacionBasicaDoctor(
      {Key? key,
      required this.callbackFunction,
      required this.mostrarCedulaProfesional})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    late double? ratingBarValue = 1;

    updateRatingValue(newValue) {
      ratingBarValue = newValue;
    }

    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20), // 35
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    width: 3,
                                  ),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(17),
                                  child: Image.network(
                                    'https://picsum.photos/seed/329/600',
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10, 0, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'Dra. Nombre Apellido Apellido',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300,
                                          ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              7, 0, 0, 0),
                                      child: Icon(
                                        Icons.check_circle_sharp,
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                        size: 18,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Especialidad',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0, 5, 0, 5),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      RatingBar.builder(
                                        onRatingUpdate: (newValue) =>
                                            updateRatingValue(newValue),
                                        itemBuilder: (context, index) =>
                                            const Icon(
                                          Icons.star_rounded,
                                          color: Color(0xFFFFDC64),
                                        ),
                                        direction: Axis.horizontal,
                                        initialRating: ratingBarValue ??= 3,
                                        unratedColor: const Color(0xFFC0C0C0),
                                        itemCount: 5,
                                        itemSize: 18,
                                        glowColor: const Color(0xFFFFDC64),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(8, 0, 0, 0),
                                        child: Text(
                                          '123 opiniones',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Montserrat',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w300,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                if (mostrarCedulaProfesional)
                                  const CedulaProfesional(),
                                // -> Aqui va informacion de la cédula
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
