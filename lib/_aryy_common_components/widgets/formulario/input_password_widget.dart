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
      this.textController,
      required this.hintText,
      required this.onChange,
      required this.warningLabel});

  final String hintText;
  final VoidCallback onChange;
  final TextEditingController? textController;
  final Widget warningLabel;

  @override
  State<InputPasswordWidget> createState() => _InputPasswordWidgetState();
}

class _InputPasswordWidgetState extends State<InputPasswordWidget> {
  bool isPasswordVisible = false;
  bool isWarningLabelVisible = false;
  // final WarningLabel lengthWarning =
  //     WarningLabel('Al menos 8 caractéres', Colors.orange, Icons.error);
  // final WarningLabel matchWarning =
  //     WarningLabel('Las contraseñas no coinciden', Colors.red, Icons.warning);
  // late WarningLabel warningLabel;

  // onPasswordChange(String password) {
  //   setState(() {
  //     isWarningLabelVisible =
  //         widget.onChangeFunction(password) != WarningType.none;
  //     if (isWarningLabelVisible) {
  //       warningLabel =
  //           widget.onChangeFunction(password) == WarningType.passwordLength
  //               ? lengthWarning
  //               : matchWarning;
  //     }
  //   });
  //}

  @override
  Widget build(BuildContext context) {
    return InputWidget(
      textController: widget.textController,
      hintText: widget.hintText,
      inputTextType: TextInputType.visiblePassword,
      onChangeFunction: widget.onChange,
      isOscureTextVisible: isPasswordVisible,
      suffixIcon: IconButton(
        onPressed: () {
          // setState(() {
          //   isPasswordVisible = !isPasswordVisible;
          // });
        },
        icon: Icon(isPasswordVisible ? Icons.visibility : Icons.visibility_off),
        splashRadius: 10,
      ),
      appendComponent: widget.warningLabel,
      borderColor: Colors.transparent,
    );
  }
}
