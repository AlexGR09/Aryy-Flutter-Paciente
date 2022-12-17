import './input_widget.dart';
import 'package:flutter/material.dart';

class InputTextWidget extends StatefulWidget {
  const InputTextWidget(
      {super.key, required this.hintText, required this.textEditingController});

  final String hintText;
  final TextEditingController textEditingController;

  @override
  State<InputTextWidget> createState() => _InputTextWidgetState();
}

class _InputTextWidgetState extends State<InputTextWidget> {
  late Widget notImplementedYet = const Text('');

  @override
  Widget build(BuildContext context) {
    return InputWidget(
      isOscureTextVisible: true,
      hintText: widget.hintText,
      suffixIcon: notImplementedYet,
      inputTextType: TextInputType.name,
      appendComponent: notImplementedYet,
      onChangeFunction: (String text) {},
      textController: widget.textEditingController,
    );
  }
}
