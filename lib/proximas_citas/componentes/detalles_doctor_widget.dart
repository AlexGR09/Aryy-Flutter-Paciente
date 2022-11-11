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
// //---------------------------  Nombre y especialidad  -----------------------------------------------------------------------------------------------------------------
              Expanded(
                  flex: 3,
                  child: Padding(
                      padding: const EdgeInsetsDirectional.only(start: 10),
                      child: Column(
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
                          ),
                          if (!widget.esProximaCita)
                            Padding(
                                padding:
                                    const EdgeInsetsDirectional.only(top: 10),
                                child: Container(
                                    width: 115,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      color: const Color.fromARGB(
                                          255, 236, 249, 247),
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryColor,
                                        width: 1,
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'ATENDIDA',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                                fontFamily: 'Montserrat',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryColor,
                                                fontWeight: FontWeight.normal,
                                                fontSize: 14),
                                      ),
                                    )))
                        ],
                      ))),
// //---------------------------  Puntuacion de reseñas  -----------------------------------------------------------------------------------------------------------------
              Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
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
                  ])),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text(
                  '5.0',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w500,
                      fontSize: 18),
                ),
              ])
            ]));
  }
}
