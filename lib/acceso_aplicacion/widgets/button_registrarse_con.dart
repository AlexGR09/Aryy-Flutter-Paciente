import '../../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';

class RegistarseConButton extends StatefulWidget {
  const RegistarseConButton({super.key, required this.iconName});

  final String iconName;
  @override
  State<RegistarseConButton> createState() => _RegistarseConButtonState();
}

class _RegistarseConButtonState extends State<RegistarseConButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: const Color(0xC5D9D9D9),
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
        child: SvgPicture.asset(
          widget.iconName,
          width: 40,
          height: 40,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
