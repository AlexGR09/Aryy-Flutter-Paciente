import 'package:flutter/material.dart';
import '../../../../flutter_flow/flutter_flow_theme.dart';

class AryyAppbarAction extends StatefulWidget {
  const AryyAppbarAction({
    super.key,
    required this.routeName,
    required this.text,
  });

  final String routeName;
  final String text;

  @override
  State<AryyAppbarAction> createState() => _AryyAppbarActionState();
}

class _AryyAppbarActionState extends State<AryyAppbarAction> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0, 30, 30, 0),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, widget.routeName);
        },
        child: Text(
          widget.text,
          style: FlutterFlowTheme.of(context).bodyText1.override(
                fontFamily: 'Montserrat',
                color: const Color(0xC5B4B4B4),
              ),
        ),
      ),
    );
  }
}
