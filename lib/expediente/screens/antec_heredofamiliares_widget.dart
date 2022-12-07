import '../../_aryy_common_components/widgets/appbar/appbar_widget.dart';
import '../../_aryy_common_components/widgets/appbar/modo_oscuro.dart';
import '../../_aryy_common_components/widgets/formulario/button_form_expanded_widget.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../widgets/description_text_widget.dart';
import '../widgets/radio_button_select_widget.dart';
import '../widgets/radio_button_with_inputtext_trigger_widget.dart';
import 'package:flutter/material.dart';

class AntecHeredofamiliaresWidget extends StatefulWidget {
  const AntecHeredofamiliaresWidget({Key? key}) : super(key: key);

  @override
  _AntecHeredofamiliaresWidgetState createState() =>
      _AntecHeredofamiliaresWidgetState();
}

class _AntecHeredofamiliaresWidgetState
    extends State<AntecHeredofamiliaresWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final List<String> ejemplodeFigma = [
      'Abuelos maternos',
      'Abuelos paternos',
      'Mamá',
      'Papá',
      'Tíos maternos',
      'Tíos paternos',
      'Sobrinos',
      'Hermano / Hermana',
      'Primos maternos',
      'Primos paternos',
    ];
    return Scaffold(
      key: GlobalKey<ScaffoldState>(),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: PreferredSize(
          preferredSize: const Size(100, 80),
          child: AryyAppBar(
              title: Text(
                'Antecedentes heredofamiliares',
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
              children: [
                const DescriptionText(
                    title: 'Antecedentes heredofamiliares',
                    description:
                        'Agregar informacion sobre padecimientos que esten o hayan estado presentes en tu familia.'),
                RadioButtonSelectOption(
                  radioOptions: const ['Si', 'No'],
                  selectOptions: ejemplodeFigma,
                  inputTextHintText: 'Escribe qué tipo',
                  selectHintText: 'Selecciona quién en tu familia',
                  title: 'Diabetes',
                ),
                RadioButtonSelectOption(
                  radioOptions: const ['Si', 'No'],
                  selectOptions: ejemplodeFigma,
                  inputTextHintText: 'Escribe el padecimiento',
                  selectHintText: 'Selecciona quién en tu familia',
                  title: 'Cardiopatías',
                ),
                const RadioButtonWithInputTextTriggerWidget(
                    title: 'Qué tipo de presión arterial alta/baja tiene?',
                    inputTextHintText:
                        '¿Que otro tipo de presión artereal tiene?',
                    radioButtonOptions: [
                      'Otro',
                      'Hipertensión',
                      'Hipotensión'
                    ]),
                RadioButtonSelectOption(
                  radioOptions: const ['Si', 'No'],
                  selectOptions: ejemplodeFigma,
                  inputTextHintText: 'Escribe el padecimiento',
                  selectHintText: 'Selecciona quién en tu familia',
                  title: 'Enfermedades tiroideas',
                ),
                RadioButtonSelectOption(
                  radioOptions: const ['Si', 'No'],
                  selectOptions: ejemplodeFigma,
                  inputTextHintText: 'Escribe el padecimiento',
                  selectHintText: 'Selecciona quién en tu familia',
                  title: 'Enfermedades en la sangre',
                ),
                RadioButtonSelectOption(
                  radioOptions: const ['Si', 'No'],
                  selectOptions: ejemplodeFigma,
                  inputTextHintText: 'Escribe el padecimiento',
                  selectHintText: 'Selecciona quién en tu familia',
                  title: 'Cáncer',
                ),
                RadioButtonSelectOption(
                  radioOptions: const ['Si', 'No'],
                  selectOptions: ejemplodeFigma,
                  inputTextHintText: 'Escribe el padecimiento',
                  selectHintText: 'Selecciona quién en tu familia',
                  title: 'Cálculos renales',
                ),
                BotonFormularioExpandido(
                    text: 'Guardar',
                    onPressed: () {
                      print('Button pressed ...');
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
