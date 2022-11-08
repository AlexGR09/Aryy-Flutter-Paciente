import './input_widget.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

enum WarningType {
  none,
  passwordLength,
  passwordMatch,
}

class WarningLabel {
  final String text;
  final Color color;
  final IconData icon;
  WarningLabel(this.text, this.color, this.icon);
}

class InputPasswordWidget extends StatefulWidget {
  const InputPasswordWidget(
      {super.key,
      this.textController,
      required this.hintText,
      required this.onChangeFunction});

  final String hintText;
  final Function onChangeFunction;
  final TextEditingController? textController;

  @override
  State<InputPasswordWidget> createState() => _InputPasswordWidgetState();
}

class _InputPasswordWidgetState extends State<InputPasswordWidget> {
  bool isPasswordVisible = false;
  bool isWarningLabelVisible = false;
  final WarningLabel lengthWarning =
      WarningLabel('Al menos 8 caractéres', Colors.orange, Icons.error);
  final WarningLabel matchWarning =
      WarningLabel('Las contraseñas no coinciden', Colors.red, Icons.warning);
  late WarningLabel warningLabel;

  onPasswordChange(String password) {
    setState(() {
      isWarningLabelVisible =
          widget.onChangeFunction(password) != WarningType.none;
      if (isWarningLabelVisible) {
        warningLabel =
            widget.onChangeFunction(password) == WarningType.passwordLength
                ? lengthWarning
                : matchWarning;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return InputWidget(
        textController: widget.textController,
        hintText: widget.hintText,
        inputTextType: TextInputType.visiblePassword,
        onChangeFunction: onPasswordChange,
        isOscureTextVisible: isPasswordVisible,
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              isPasswordVisible = !isPasswordVisible;
            });
          },
          icon:
              Icon(isPasswordVisible ? Icons.visibility : Icons.visibility_off),
          splashRadius: 10,
        ),
        borderColor:
            isWarningLabelVisible ? warningLabel.color : Colors.transparent,
        appendComponent: isWarningLabelVisible
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(warningLabel.text,
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Montserrat',
                          color: warningLabel.color,
                          fontWeight: FontWeight.w400,
                          fontSize: 14)),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                    child: Icon(
                      warningLabel.icon,
                      size: 15,
                      color: warningLabel.color,
                    ),
                  )
                ],
              )
            : Row());
  }
}
