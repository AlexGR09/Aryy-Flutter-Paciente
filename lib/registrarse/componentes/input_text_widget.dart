import './input_widget.dart';
import 'package:flutter/material.dart';

class InputTextWidget extends StatefulWidget {
  const InputTextWidget({super.key, required this.hintText});
  final String hintText;

  @override
  State<InputTextWidget> createState() => _InputTextWidgetState();
}

class _InputTextWidgetState extends State<InputTextWidget> {
  late Widget notImplementedYet = const Text('');

  onInputTextChange(String password) {}

  @override
  Widget build(BuildContext context) {
    return InputWidget(
      hintText: widget.hintText,
      inputTextType: TextInputType.name,
      appendComponent: notImplementedYet,
      suffixIcon: notImplementedYet,
      onChangeFunction: onInputTextChange,
      borderColor: Colors.transparent,
      isOscureTextVisible: true,
    );
  }
}
