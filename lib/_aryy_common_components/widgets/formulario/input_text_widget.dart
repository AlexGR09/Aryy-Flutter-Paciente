import 'package:flutter/material.dart';
import './input_widget.dart';

class InputTextWidget extends InputWidget {
  const InputTextWidget(
      {super.key,
      required String hintText,
      required TextEditingController textEditingController})
      : super(
            hintText: hintText,
            textEditingController: textEditingController,
            textInputType: TextInputType.name,
            regExp: "[a-zA-Z\.0-9@_-]");
}
