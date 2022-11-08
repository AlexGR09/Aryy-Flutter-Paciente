import '../../flutter_flow/flutter_flow_theme.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';

class BarraBusqueda extends StatefulWidget {
  const BarraBusqueda({
    required this.inputTextController,
    Key? key,
  }) : super(key: key);

  final TextEditingController inputTextController;

  @override
  State<BarraBusqueda> createState() => _BarraBusquedaState();
}

class _BarraBusquedaState extends State<BarraBusqueda> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          boxShadow: [
            BoxShadow(
              blurRadius: 10,
              color: FlutterFlowTheme.of(context).primaryBackground,
              offset: Offset(0, 2),
              spreadRadius: 0,
            )
          ],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
          child: TextFormField(
            controller: widget.inputTextController,
            onChanged: (_) => EasyDebounce.debounce(
              'inputTextController',
              Duration(milliseconds: 2000),
              () => setState(() {}),
            ),
            autofocus: true,
            obscureText: false,
            decoration: InputDecoration(
              hintText: 'Traumatólogo - Cerca de mí',
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
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0x00000000),
                  width: 1,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4.0),
                  topRight: Radius.circular(4.0),
                ),
              ),
              errorBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0x00000000),
                  width: 1,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4.0),
                  topRight: Radius.circular(4.0),
                ),
              ),
              focusedErrorBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0x00000000),
                  width: 1,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4.0),
                  topRight: Radius.circular(4.0),
                ),
              ),
              suffixIcon: widget.inputTextController.text.isNotEmpty
                  ? InkWell(
                      onTap: () async {
                        widget.inputTextController.clear();
                        setState(() {});
                      },
                      child: const Icon(
                        Icons.clear,
                        color: Color(0xFF757575),
                        size: 22,
                      ),
                    )
                  : null,
            ),
            style: FlutterFlowTheme.of(context).bodyText1.override(
                  fontFamily: 'Montserrat',
                  color: FlutterFlowTheme.of(context).secondaryText,
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
          ),
        ));
  }
}
