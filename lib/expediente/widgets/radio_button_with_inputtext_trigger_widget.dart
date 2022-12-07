import './radio_button_input_text_widget.dart';
import './radio_button_widget.dart';
import './select_title_widget.dart';
import 'package:flutter/material.dart';

class RadioButtonWithInputTextTriggerWidget extends StatefulWidget {
  const RadioButtonWithInputTextTriggerWidget(
      {super.key,
      required this.title,
      required this.inputTextHintText,
      required this.radioButtonOptions});

  final String title;
  final String inputTextHintText;
  final List<String> radioButtonOptions;

  @override
  State<RadioButtonWithInputTextTriggerWidget> createState() =>
      _RadioButtonWithInputTextTriggerWidgetState();
}

class _RadioButtonWithInputTextTriggerWidgetState
    extends State<RadioButtonWithInputTextTriggerWidget> {
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
                  options: widget.radioButtonOptions,
                  // - If the radio button 'yes' option is selected, then show the input text
                  showInputTextFunction: (value) => setState(() {
                    isRadioButtonTrue = value;
                  }),
                ),
                if (isRadioButtonTrue)
                  RadioButtonInputText(hintText: widget.inputTextHintText)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
