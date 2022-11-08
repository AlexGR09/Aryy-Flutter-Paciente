import '../../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

class BotonOmitir extends StatefulWidget {
  const BotonOmitir({super.key});

  @override
  State<BotonOmitir> createState() => _BotonOmitirState();
}

class _BotonOmitirState extends State<BotonOmitir> {
  @override
  Widget build(BuildContext context) {
    return Builder(
        builder: (context) => InkWell(
            onTap: () =>
                Navigator.pushNamed(context, "registrarse_iniciosesion"),
            child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 25, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Omitir',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Montserrat',
                                    color: const Color(0xC5B4B4B4),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 18,
                                  ),
                        )
                      ],
                    ),
                  ],
                ))));
  }
}
