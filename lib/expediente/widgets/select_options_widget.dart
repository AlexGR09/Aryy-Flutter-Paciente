import '../../flutter_flow/flutter_flow_drop_down.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

class SelectOptions extends StatefulWidget {
  const SelectOptions(
      {super.key, required this.hintText, required this.options});

  final String hintText;
  final List<String> options;

  @override
  State<SelectOptions> createState() => _SelectOptionsState();
}

class _SelectOptionsState extends State<SelectOptions> {
  String? dropDownValue1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: FlutterFlowDropDown<String>(
              options: widget.options,
              onChanged: (val) => setState(() => dropDownValue1 = val),
              width: 180,
              height: 45,
              textStyle: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Montserrat',
                    color: FlutterFlowTheme.of(context).secondaryText,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
              hintText: widget.hintText,
              fillColor: Colors.white,
              elevation: 2,
              borderColor: Colors.transparent,
              borderWidth: 0,
              borderRadius: 15,
              margin: const EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
              hidesUnderline: true,
            ),
          ),
        ],
      ),
    );
  }
}
