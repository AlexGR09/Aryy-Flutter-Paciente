import './input_widget.dart';
import 'package:flutter/material.dart';

// enum WarningType {
//   none,
//   passwordLength,
//   passwordMatch,
// }

class InputPasswordWidget extends StatefulWidget {
  const InputPasswordWidget({
    super.key,
    required this.hintText,
    required this.onChange,
    required this.warningLabel,
    required this.textEditingController,
  });

  final String hintText;
  final Widget warningLabel;
  final Function(String) onChange;
  final TextEditingController textEditingController;

  @override
  State<InputPasswordWidget> createState() => _InputPasswordWidgetState();
}

class _InputPasswordWidgetState extends State<InputPasswordWidget> {
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return InputWidget(
      textController: widget.textEditingController,
      hintText: widget.hintText,
      onChangeFunction: widget.onChange,
      isOscureTextVisible: isPasswordVisible,
      inputTextType: TextInputType.visiblePassword,
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
    );
  }
}
