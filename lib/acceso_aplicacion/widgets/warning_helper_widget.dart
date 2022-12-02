import 'package:flutter/material.dart';
import '../../flutter_flow/flutter_flow_theme.dart';

const WarningHelper clearWarning = WarningHelper(
  "",
  Icons.check,
  Colors.white,
);
const WarningHelper passwordMatchWarning = WarningHelper(
  "Al menos 8 caractéres",
  Icons.error,
  Colors.orange,
);
const WarningHelper passwordLengthWarning = WarningHelper(
  "Los campos no coinciden",
  Icons.warning,
  Colors.red,
);

class WarningHelper extends StatefulWidget {
  const WarningHelper(this.text, this.icon, this.color);

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
