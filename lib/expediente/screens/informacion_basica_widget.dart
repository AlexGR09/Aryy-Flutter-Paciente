import 'package:aryy_front/_aryy_common_components/widgets/formulario/button_form_widget.dart';
import 'package:aryy_front/expediente/widgets/radio_button_input_text_widget.dart';

import '../../_aryy_common_components/widgets/appbar/appbar_widget.dart';
import '../../_aryy_common_components/widgets/appbar/modo_oscuro.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_widgets.dart';
import '../widgets/radio_button_widget.dart';
import '../widgets/select_options_widget.dart';
import '../widgets/select_title_widget.dart';
import 'package:flutter/material.dart';

class InformacionBasicaWidget extends StatefulWidget {
  const InformacionBasicaWidget({Key? key}) : super(key: key);

  @override
  _InformacionBasicaWidgetState createState() =>
      _InformacionBasicaWidgetState();
}

class _InformacionBasicaWidgetState extends State<InformacionBasicaWidget> {
  String? dropDownValue2;
  String? dropDownValue3;

  String? radioButtonValue2;
  TextEditingController? textController2;
  String? radioButtonValue3;
  TextEditingController? textController3;

  @override
  void initState() {
    super.initState();

    textController2 = TextEditingController();
    textController3 = TextEditingController();
  }

  @override
  void dispose() {
    textController2?.dispose();
    textController3?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: GlobalKey<ScaffoldState>(),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: PreferredSize(
          preferredSize: const Size(100, 80),
          child: AryyAppBar(
              title: Text(
                'Mi expediente',
                style: FlutterFlowTheme.of(context).title2.override(
                      fontFamily: 'Montserrat',
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
              ),
              actions: const DarkModeIcon())),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(16, 40, 16, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Informacion basica y alergias',
                              style: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Montserrat',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                  ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                              child: Text(
                                'Agregar datos sobre las alergias que puedas\npadecer para tener esta informacion\nsiempre a la mano',
                                textAlign: TextAlign.justify,
                                style: FlutterFlowTheme.of(context)
                                    .bodyText2
                                    .override(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 20, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            SelectTitle(text: '¿Cual es tu grupo sanguineo?'),
                            SelectOptions(
                              hintText: 'Selecciona tu tipo sanguineo',
                              options: ['Option 1'],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 20, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            SelectTitle(text: '¿Cuanto mides?'),
                            SelectOptions(
                              hintText: 'Escribe aqui',
                              options: ['Option 1'],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 20, 16, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            SelectTitle(text: '¿Cuanto pesas actualmente?'),
                            SelectOptions(
                              hintText: 'Escribe aqui',
                              options: ['Option 1'],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 20, 16, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            SelectTitle(text: '¿Tienes alergias alimentarias?'),
                            RadioButton(
                              options: ['Si', 'No'],
                            ),
                            RadioButtonInputText(
                                hintText: 'Ejemplo: cacahuate, fresas')
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 20, 16, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              SelectTitle(
                                  text: '¿Tienes alergias a algun farmaco?'),
                              RadioButton(
                                options: ['Si', 'No'],
                              ),
                              RadioButtonInputText(
                                  hintText: 'Ejemplo: naproxeno, ibuprofeno')
                            ]),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 20, 16, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              SelectTitle(
                                  text:
                                      '¿Tienes alergias a factores ambientales?'),
                              RadioButton(
                                options: ['Si', 'No'],
                              ),
                              RadioButtonInputText(
                                  hintText: 'Ejemplo: polen, polvo')
                            ]),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 25, 16, 20),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: BotonFormulario(
                          text: 'Guardar',
                          onPressed: () {
                            print('Button pressed ...');
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
