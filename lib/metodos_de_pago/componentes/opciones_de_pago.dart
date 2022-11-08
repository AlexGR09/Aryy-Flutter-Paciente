import '../../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OpciondePago extends StatefulWidget {
  const OpciondePago({
    required this.icon,
    required this.title,
    Key? key,
  });

  final IconData icon;
  final String title;

  @override
  State<OpciondePago> createState() => _OpciondePagoState();
}

class _OpciondePagoState extends State<OpciondePago> {
  late bool isCheckboxChecked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Theme(
              data: ThemeData(
                checkboxTheme: CheckboxThemeData(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                unselectedWidgetColor: Color(0xFF95A1AC),
              ),
              child: CheckboxListTile(
                value: isCheckboxChecked,
                onChanged: (newValue) async {
                  setState(() => isCheckboxChecked = newValue!);
                },
                title: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    FaIcon(
                      widget.icon,
                      color: FlutterFlowTheme.of(context).primaryColor,
                      size: 35,
                    ),
                    Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                        child: Text(
                          widget.title,
                          style: FlutterFlowTheme.of(context).title3.override(
                                fontFamily: 'Montserrat',
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                              ),
                        )),
                  ],
                ),
                tileColor: FlutterFlowTheme.of(context).primaryBackground,
                activeColor: FlutterFlowTheme.of(context).primaryColor,
                dense: false,
                controlAffinity: ListTileControlAffinity.leading,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
