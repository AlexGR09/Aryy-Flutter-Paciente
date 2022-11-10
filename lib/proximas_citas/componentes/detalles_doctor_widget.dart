import '../../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class InformacionCitaDoctor extends StatefulWidget {
  const InformacionCitaDoctor({super.key, required this.esProximaCita});

  final bool esProximaCita;

  @override
  State<InformacionCitaDoctor> createState() => _InformacionCitaDoctorState();
}

class _InformacionCitaDoctorState extends State<InformacionCitaDoctor> {
  double? ratingBarValue1;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsetsDirectional.only(top: 20, bottom: 15),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
//---------------------------  Icono perfil doctor  -----------------------------------------------------------------------------------------------------------------
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 60,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(17),
                  ),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.all(2.5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        'https://picsum.photos/seed/86/123',
                        width: 160,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
//---------------------------  Nombre y especialidad  -----------------------------------------------------------------------------------------------------------------
            Expanded(
              child: Padding(
                padding: const EdgeInsetsDirectional.only(start: 10),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Dr. Nombre Apellido',
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'Montserrat',
                                  color:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  fontSize: 23,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          Text(
                            'Urología',
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'Montserrat',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w300,
                                ),
                          )
                        ]),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        if (!widget.esProximaCita)
                          Container(
                            width: 100,
                            height: 24,
                            decoration: BoxDecoration(
                              color: const Color(0xFFE9F9F6),
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color:
                                    FlutterFlowTheme.of(context).secondaryColor,
                                width: 2,
                              ),
                            ),
                            child: Text(
                              'Atentdida',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Montserrat',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryColor,
                                    fontWeight: FontWeight.normal,
                                  ),
                            ),
                          ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
//---------------------------  Puntuacion de reseñas  -----------------------------------------------------------------------------------------------------------------
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                RatingBar.builder(
                  onRatingUpdate: (newValue) =>
                      setState(() => ratingBarValue1 = newValue),
                  itemBuilder: (context, index) => const Icon(
                    Icons.star_rounded,
                    color: Color(0xFFFFDC64),
                  ),
                  direction: Axis.horizontal,
                  initialRating: ratingBarValue1 ??= 3,
                  unratedColor: const Color(0xFF9E9E9E),
                  itemCount: 1,
                  itemSize: 26,
                  glowColor: const Color(0xFFFFDC64),
                ),
                Text(
                  '5.0',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                ),
              ],
            ),
          ],
        ));
  }
}
