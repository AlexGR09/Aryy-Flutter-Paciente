import 'package:flutter/material.dart';
import '../../flutter_flow/flutter_flow_theme.dart';

class WarningHelper extends StatefulWidget {
  const WarningHelper(
      {super.key, required this.text, required this.icon, required this.color});

  final String text;
  final IconData icon;
  final Color color;

  @override
  State<WarningHelper> createState() => _WarningHelperState();
}

class _WarningHelperState extends State<WarningHelper> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 4),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(widget.text,
                style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Montserrat',
                    color: widget.color,
                    fontWeight: FontWeight.w400,
                    fontSize: 14)),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Icon(
                widget.icon,
                size: 15,
                color: widget.color,
              ),
            )
          ],
        ));
  }
}
