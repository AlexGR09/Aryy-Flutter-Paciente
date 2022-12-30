import 'package:flutter/services.dart';

import '../../../../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

class InputCustomWidget extends StatefulWidget {
  const InputCustomWidget({
    super.key,
    required this.textController,
    required this.hintText,
    required this.suffixIcon,
    required this.inputTextType,
    required this.appendComponent,
    required this.onChangeFunction,
    required this.isOscureTextVisible,
    required this.regExp,
  });

  final String regExp;
  final TextEditingController textController;
  final TextInputType inputTextType;
  final bool isOscureTextVisible;
  final String hintText;
  final Widget suffixIcon;
  final Widget appendComponent;
  final void Function(String) onChangeFunction;

  @override
  State<InputCustomWidget> createState() => _InputCustomWidgetState();
}

class _InputCustomWidgetState extends State<InputCustomWidget> {
  bool isVisible = false;
  bool isPasswordEightCharacters = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(bottom: 22),
      child: Material(
        color: Colors.transparent,
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          width: 300,
          height: 45,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            boxShadow: const [
              BoxShadow(
                blurRadius: 2,
                color: Colors.transparent,
                offset: Offset(0, 0),
              )
            ],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
            child: Wrap(children: [
              TextFormField(
                onChanged: (text) {
                  print("typed: ${text}");
                  return widget.onChangeFunction(text);
                },
                controller: widget.textController,
                keyboardType: widget.inputTextType,
                obscureText: !widget.isOscureTextVisible,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(
                    RegExp(widget.regExp),
                  )
                ],
                autofocus: true,
                decoration: InputDecoration(
                  suffixIcon: Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: widget.suffixIcon,
                  ),
                  hintText: widget.hintText,
                  hintStyle: FlutterFlowTheme.of(context).bodyText2.override(
                      fontFamily: 'Montserrat',
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                      color: const Color(0xFFCCCCCC)),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      width: 0,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                ),
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Montserrat',
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
              ),
              widget.appendComponent,
            ]),
          ),
        ),
      ),
    );
  }
}
