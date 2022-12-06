import '../../flutter_flow/flutter_flow_radio_button.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

class RadioButton extends StatefulWidget {
  const RadioButton(
      {super.key, required this.options, required this.showInputTextFunction});

  final List<String> options;
  final void Function(bool) showInputTextFunction;

  @override
  State<RadioButton> createState() => _RadioButtonState();
}

class _RadioButtonState extends State<RadioButton> {
  String? radioButtonValue;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(top: 20),
      child: FlutterFlowRadioButton(
        options: widget.options.toList(),
        onChanged: (val) => setState(() {
          radioButtonValue = val;
          // Listen radio button update. If the radio button 'yes' option is selected, then show the input text
          widget.showInputTextFunction(
              widget.options.indexOf(val.toString()) == 0);
        }),
        optionHeight: 20,
        textStyle: FlutterFlowTheme.of(context).bodyText1.override(
              fontFamily: 'Montserrat',
              color: FlutterFlowTheme.of(context).secondaryText,
            ),
        buttonPosition: RadioButtonPosition.left,
        direction: Axis.horizontal,
        radioButtonColor: FlutterFlowTheme.of(context).primaryColor,
        inactiveRadioButtonColor: FlutterFlowTheme.of(context).secondaryText,
        toggleable: false,
        horizontalAlignment: WrapAlignment.start,
        verticalAlignment: WrapCrossAlignment.start,
      ),
    );
  }
}
