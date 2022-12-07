import '../../_aryy_common_components/widgets/appbar/appbar_widget.dart';
import '../../_aryy_common_components/widgets/appbar/modo_oscuro.dart';
import '../../_aryy_common_components/widgets/formulario/button_form_expanded_widget.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../widgets/description_text_widget.dart';
import '../widgets/radio_button_select_widget.dart';
import '../widgets/radio_button_simple_widget.dart';
import '../widgets/radio_button_with_inputtext_trigger_widget.dart';
import '../widgets/radio_button_with_select_trigger_widget.dart';
import '../widgets/select_widget.dart';
import 'package:flutter/material.dart';

class AntecedentesNoPatologicosWidget extends StatefulWidget {
  const AntecedentesNoPatologicosWidget({Key? key}) : super(key: key);

  @override
  _AntecedentesNoPatologicosWidgetState createState() =>
      _AntecedentesNoPatologicosWidgetState();
}

class _AntecedentesNoPatologicosWidgetState
    extends State<AntecedentesNoPatologicosWidget> {
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
    return Scaffold(
      key: GlobalKey<ScaffoldState>(),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: PreferredSize(
          preferredSize: const Size(100, 80),
          child: AryyAppBar(
              title: Text(
                'Antecedentes no patológicos',
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
                    title: 'Antecedentes no patologicos',
                    description:
                        'Agregar informacion sibre los habitos de actividad fisica y de sueño, asi como de alimentación.'),
                const RadioButtonSelectOption(
                  radioOptions: ['Si', 'No'],
                  selectOptions: ['Opción 1', 'Opción 2'],
                  inputTextHintText: 'Escribe qué tipo',
                  selectHintText: '¿Cuántos días a la semana?',
                  title: 'Actividad fisica',
                ),
                const SelectWidget(
                    title: 'Horas de sueño',
                    hintText: 'Seleccione un rango',
                    options: ['Opción 1', 'Opción 2']),
                const RadioButtonSimple(
                  title: '¿Sueña siempre que duerme?',
                  options: ['Si', 'No', 'No sé'],
                ),
                const RadioButtonSimple(
                  title: '¿Siente que descansa al dormir?',
                  options: ['Si', 'A veces', 'No'],
                ),
                const RadioButtonSelectOption(
                  radioOptions: ['Si', 'No'],
                  selectOptions: ['Opción 1', 'Opción 2'],
                  inputTextHintText: 'Escribe qué tipo',
                  selectHintText: '¿Cuántos cigarros al día?',
                  title: 'Tabaquismo',
                ),
                const RadioButtonSelectOption(
                  radioOptions: ['Si', 'No'],
                  selectOptions: ['Opción 1', 'Opción 2'],
                  inputTextHintText: 'Escribe qué tipo',
                  selectHintText: 'Frecuecnia semanal',
                  title: 'Alcoholismo',
                ),
                const RadioButtonWithInputTextTriggerWidget(
                  title: "Uso de otras sustancias",
                  radioButtonOptions: ['Si', 'No'],
                  inputTextHintText: "Escribe cuál(es)",
                ),
                const RadioButtonWithSelectTriggerWidget(
                  title: 'Dieta especial',
                  selectOptions: ['Si', 'No'],
                  selectHintText: 'Seleccione el tipo de dieta',
                ),
                const RadioButtonWithInputTextTriggerWidget(
                  title: "Medicamento actual",
                  radioButtonOptions: ['Si', 'No'],
                  inputTextHintText: "Escribe cuál(es)",
                ),
                const RadioButtonWithInputTextTriggerWidget(
                  title: "Medicamento anterior",
                  radioButtonOptions: ['Si', 'No'],
                  inputTextHintText: "Escribe cuál(es)",
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
