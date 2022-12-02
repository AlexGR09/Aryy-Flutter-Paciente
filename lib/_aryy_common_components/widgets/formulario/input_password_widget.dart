import './input_widget.dart';
import 'package:flutter/material.dart';

// enum WarningType {
//   none,
//   passwordLength,
//   passwordMatch,
// }

class InputPasswordWidget extends StatefulWidget {
  const InputPasswordWidget(
      {super.key,
      required this.hintText,
      required this.onChange,
      required this.warningLabel,
      required this.textEditingController});

  final String hintText;
  final Function(String) onChange;
  final TextEditingController textEditingController;
  final Widget warningLabel;

  @override
  State<InputPasswordWidget> createState() => _InputPasswordWidgetState();
}

class _InputPasswordWidgetState extends State<InputPasswordWidget> {
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return InputWidget(
      hintText: widget.hintText,
      inputTextType: TextInputType.visiblePassword,
      onChangeFunction: widget.onChange,
      isOscureTextVisible: isPasswordVisible,
      suffixIcon: IconButton(
        onPressed: () {
          setState(() {
            isPasswordVisible = !isPasswordVisible;
          });
        },
        icon: Icon(isPasswordVisible ? Icons.visibility : Icons.visibility_off),
        splashRadius: 10,
      ),
      appendComponent: widget.warningLabel,
      borderColor: Colors.transparent,
    );
  }
}
