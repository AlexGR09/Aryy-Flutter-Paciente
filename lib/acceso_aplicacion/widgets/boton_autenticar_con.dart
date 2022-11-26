import '../../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';

class BotonAutentificarCon extends StatefulWidget {
  const BotonAutentificarCon(
      {super.key, required this.assetName, this.isLabelVisible});

  final String assetName;
  final bool? isLabelVisible;

  @override
  State<BotonAutentificarCon> createState() => _BotonAutentificarConState();
}

class _BotonAutentificarConState extends State<BotonAutentificarCon> {
  String capitalize(String s) =>
      s[0].toUpperCase() + s.substring(1).toLowerCase();

  @override
  Widget build(BuildContext context) {
    // iconName = 'Assets/icons/registro_sesion/icon_google.svg'
    String assetString = widget.assetName.split('ICON_')[1]; // google.svg
    assetString = assetString.split('.')[0]; // google
    double extraMargin = assetString.length < 8 ? 30 : 10;
    return Padding(
        padding: const EdgeInsets.only(top: 0, bottom: 20),
        child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: const Color(0xC5D9D9D9),
                      width: 1,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(end: extraMargin),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.all(10),
                          child: SvgPicture.asset(
                            widget.assetName,
                            width: 40,
                            height: 40,
                            fit: BoxFit.cover,
                          ),
                        ),
                        if (widget.isLabelVisible == true)
                          Text(
                            'Iniciar sesión con ${capitalize(assetString)}',
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'Montserrat',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                      ],
                    ),
                  ))
            ]));
  }
}
