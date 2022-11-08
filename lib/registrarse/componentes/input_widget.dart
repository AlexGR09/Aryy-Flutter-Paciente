import '../../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

class InputWidget extends StatefulWidget {
  const InputWidget({
    super.key,
    this.textController,
    required this.hintText,
    required this.inputTextType,
    required this.isOscureTextVisible,
    required this.appendComponent,
    required this.suffixIcon,
    required this.onChangeFunction,
    required this.borderColor,
  });

  final TextEditingController? textController;
  final TextInputType inputTextType;
  final bool isOscureTextVisible;
  final String hintText;
  final Widget suffixIcon;
  final Widget appendComponent;
  final Function onChangeFunction;
  final Color borderColor;

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  bool isVisible = false;
  bool isPasswordEightCharacters = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0, 22, 0, 0),
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
            boxShadow: [
              BoxShadow(
                blurRadius: 2,
                color: widget.borderColor,
                offset: const Offset(0, 0),
              )
            ],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
            child: Wrap(children: [
              TextFormField(
                onChanged: (password) => widget.onChangeFunction(password),
                controller: widget.textController,
                obscureText: !widget.isOscureTextVisible,
                autofocus: true,
                decoration: InputDecoration(
                  suffixIcon: widget.suffixIcon,
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
                keyboardType: widget.inputTextType,
              ),
              widget.appendComponent,
            ]),
          ),
        ),
      ),
    );
  }
}
