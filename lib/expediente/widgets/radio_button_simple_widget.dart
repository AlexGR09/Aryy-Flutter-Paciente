import './radio_button_widget.dart';
import './select_title_widget.dart';
import 'package:flutter/material.dart';

class RadioButtonSimple extends StatefulWidget {
  const RadioButtonSimple(
      {super.key, required this.title, required this.options});

  final String title;
  final List<String> options;

  @override
  State<RadioButtonSimple> createState() => _RadioButtonSimpleState();
}

class _RadioButtonSimpleState extends State<RadioButtonSimple> {
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
                  options: widget.options,
                  // - If the radio button 'yes' option is selected, then show the input text
                  showInputTextFunction: (value) => setState(() {
                    isRadioButtonTrue = value;
                  }),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
