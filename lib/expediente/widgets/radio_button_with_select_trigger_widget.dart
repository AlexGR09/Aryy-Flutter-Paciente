import './radio_button_widget.dart';
import './select_title_widget.dart';
import './select_options_widget.dart';
import 'package:flutter/material.dart';

class RadioButtonWithSelectTriggerWidget extends StatefulWidget {
  const RadioButtonWithSelectTriggerWidget(
      {super.key,
      required this.title,
      required this.selectHintText,
      required this.selectOptions});

  final String title;
  final String selectHintText;
  final List<String> selectOptions;

  @override
  State<RadioButtonWithSelectTriggerWidget> createState() =>
      _RadioButtonWithSelectTriggerWidgetState();
}

class _RadioButtonWithSelectTriggerWidgetState
    extends State<RadioButtonWithSelectTriggerWidget> {
  late bool isRadioButtonTrue = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 16, top: 20),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SelectTitle(text: widget.title),
                RadioButton(
                  options: widget.selectOptions,
                  // - If the radio button 'yes' option is selected, then show the input text
                  showInputTextFunction: (value) => setState(() {
                    isRadioButtonTrue = value;
                  }),
                ),
                if (isRadioButtonTrue)
                  SelectOptions(
                      hintText: widget.selectHintText,
                      options: widget.selectOptions)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
