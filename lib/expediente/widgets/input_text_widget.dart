import './radio_button_input_text_widget.dart';
import './select_title_widget.dart';
import 'package:flutter/material.dart';

class InputTextMedicalRecord extends StatefulWidget {
  const InputTextMedicalRecord(
      {super.key, required this.title, required this.hintText});

  final String title;
  final String hintText;

  @override
  State<InputTextMedicalRecord> createState() => _InputTextMedicalRecordState();
}

class _InputTextMedicalRecordState extends State<InputTextMedicalRecord> {
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
                RadioButtonInputText(hintText: widget.hintText),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
