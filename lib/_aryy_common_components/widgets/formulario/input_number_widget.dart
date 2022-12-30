import 'package:flutter/material.dart';
import './input_widget.dart';

class InputNumberWidget extends InputWidget {
  const InputNumberWidget(
      {super.key,
      required String hintText,
      required TextEditingController textEditingController})
      : super(
            hintText: hintText,
            textEditingController: textEditingController,
            textInputType: TextInputType.phone,
            regExp: "[0-9]");
}
