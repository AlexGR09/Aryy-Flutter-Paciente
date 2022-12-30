import 'package:flutter/material.dart';
import './input_custom_widget.dart';

class InputWidget extends StatefulWidget {
  const InputWidget(
      {super.key,
      required this.textInputType,
      required this.hintText,
      required this.textEditingController,
      required this.regExp});

  final String regExp;
  final String hintText;
  final TextInputType textInputType;
  final TextEditingController textEditingController;

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  late Widget notImplementedYet = const Text('');
  @override
  Widget build(BuildContext context) {
    return InputCustomWidget(
      isOscureTextVisible: true,
      hintText: widget.hintText,
      suffixIcon: notImplementedYet,
      inputTextType: widget.textInputType,
      appendComponent: notImplementedYet,
      onChangeFunction: (String text) {},
      textController: widget.textEditingController,
      regExp: widget.regExp,
    );
  }
}
