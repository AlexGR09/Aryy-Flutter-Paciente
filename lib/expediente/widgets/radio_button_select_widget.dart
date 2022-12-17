import '../../_aryy_common_components/widgets/formulario/input_text_widget.dart';
import './select_options_widget.dart';
import './radio_button_widget.dart';
import './select_title_widget.dart';
import 'package:flutter/material.dart';

class RadioButtonSelectOption extends StatefulWidget {
  const RadioButtonSelectOption(
      {super.key,
      required this.title,
      required this.selectOptions,
      required this.radioOptions,
      required this.selectHintText,
      required this.inputTextHintText});

  final String title;
  final String selectHintText;
  final String inputTextHintText;
  final List<String> selectOptions;
  final List<String> radioOptions;

  @override
  State<RadioButtonSelectOption> createState() =>
      _RadioButtonSelectOptionState();
}

class _RadioButtonSelectOptionState extends State<RadioButtonSelectOption> {
  final TextEditingController _textEditingController = TextEditingController();
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
                  options: widget.radioOptions,
                  // - If the radio button 'yes' option is selected, then show the input text
                  showInputTextFunction: (value) => setState(() {
                    isRadioButtonTrue = value;
                  }),
                ),
                if (isRadioButtonTrue)
                  SelectOptions(
                    hintText: widget.selectHintText,
                    options: widget.selectOptions,
                  ),
                if (isRadioButtonTrue)
                  Padding(
                      padding: const EdgeInsetsDirectional.only(top: 20),
                      child: Row(mainAxisSize: MainAxisSize.max, children: [
                        Expanded(
                            child: InputTextWidget(
                          hintText: widget.inputTextHintText,
                          textEditingController: _textEditingController,
                        ))
                      ]))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
