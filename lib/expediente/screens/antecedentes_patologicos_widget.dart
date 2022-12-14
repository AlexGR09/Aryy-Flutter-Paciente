import '../../_aryy_common_components/widgets/appbar/appbar_widget.dart';
import '../../_aryy_common_components/widgets/appbar/modo_oscuro.dart';
import '../../_aryy_common_components/widgets/formulario/button_form_expanded_widget.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../repository/expediente_service.dart';
import '../widgets/description_text_widget.dart';
import '../widgets/radio_button_with_inputtext_trigger_widget.dart';
import 'package:flutter/material.dart';

class AntecedentesPatologicosWidget extends StatefulWidget {
  const AntecedentesPatologicosWidget({Key? key}) : super(key: key);

  @override
  _AntecedentesPatologicosWidgetState createState() =>
      _AntecedentesPatologicosWidgetState();
}

class _AntecedentesPatologicosWidgetState
    extends State<AntecedentesPatologicosWidget> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  String previous_surgeries = '';
  String blood_transfusions = '';
  String diabetes = '';
  String heart_diseases = '';
  String blood_pressure = '';
  String thyroid_diseases = '';
  String cancer = '';
  String kidney_stones = '';
  String hepatitis = '';
  String trauma = '';
  String respiratory_diseases = '';
  String ets = '';
  String gastrointestinal_pathologies = '';

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
              children: [
                const DescriptionText(
                    title: 'Antecedentes patologicos',
                    description:
                        'Agrega información sobre cualquier intervencion o padecimiento previo que hayas tenido.'),
                const RadioButtonWithInputTextTriggerWidget(
                    title: '¿Tienes alguna cirugía previa?',
                    inputTextHintText: 'Escribe que cirugia(s)',
                    radioButtonOptions: ['Si', 'No']),
                const RadioButtonWithInputTextTriggerWidget(
                    title: '¿Tienes alguna transfusión?',
                    inputTextHintText: 'Selecciona un tipo',
                    radioButtonOptions: ['Si', 'No']),
                const RadioButtonWithInputTextTriggerWidget(
                    title: '¿Tienes diabetes?',
                    inputTextHintText: '¿Que tipo de diabetes?',
                    radioButtonOptions: ['Si', 'No']),
                const RadioButtonWithInputTextTriggerWidget(
                    title: '¿Tienes cardiopatías?',
                    inputTextHintText: '¿Que tipo de cardiopatías?',
                    radioButtonOptions: ['Si', 'No']),
                const RadioButtonWithInputTextTriggerWidget(
                    title: 'Qué tipo de presión arterial alta/baja tiene?',
                    inputTextHintText:
                        '¿Que otro tipo de presión artereal tiene?',
                    radioButtonOptions: [
                      'Otro',
                      'Hipertensión',
                      'Hipotensión'
                    ]),
                const RadioButtonWithInputTextTriggerWidget(
                    title: '¿Tienes enfermedades tiroideas?',
                    inputTextHintText: 'Escribe el padecimiento',
                    radioButtonOptions: ['Si', 'No']),
                const RadioButtonWithInputTextTriggerWidget(
                    title: '¿Tienes cáncer?',
                    inputTextHintText: '¿Que tipo de cancer?',
                    radioButtonOptions: ['Si', 'No']),
                const RadioButtonWithInputTextTriggerWidget(
                    title: '¿Tienes enfermedades de la sangre?',
                    inputTextHintText:
                        '¿Que tipo enfermedad en la sangre padece?',
                    radioButtonOptions: ['Si', 'No']),
                const RadioButtonWithInputTextTriggerWidget(
                    title: '¿Tienes cálculos renales?',
                    inputTextHintText: '¿Que tipo cálculos renales padece?',
                    radioButtonOptions: ['Si', 'No']),
                const RadioButtonWithInputTextTriggerWidget(
                    title: 'Ha sufrido de hepatitis?',
                    inputTextHintText: '¿Que tipo de hepatitis?',
                    radioButtonOptions: ['Si', 'No']),
                const RadioButtonWithInputTextTriggerWidget(
                    title: 'Ha sufrido de algún traumatísmo?',
                    inputTextHintText: '¿Que tipo de traumatísmo?',
                    radioButtonOptions: ['Si', 'No']),
                const RadioButtonWithInputTextTriggerWidget(
                    title: 'Ha sufrido de patologías respiratorias?',
                    inputTextHintText: '¿Que tipo de patologías respiratorias?',
                    radioButtonOptions: ['Si', 'No']),
                const RadioButtonWithInputTextTriggerWidget(
                    title: 'Ha sufrido de alguna patología gastrointestinal?',
                    inputTextHintText:
                        '¿Que tipo de patología gastrointestinal?',
                    radioButtonOptions: ['Si', 'No']),
                const RadioButtonWithInputTextTriggerWidget(
                    title:
                        'Ha sufrido de alguna enfermedades de transmision sexual?',
                    inputTextHintText: '¿Que tipo de nfermedades de transmision sexual?',
                    radioButtonOptions: ['Si', 'No']),
                BotonFormularioExpandido(
                    text: 'Guardar',
                    onPressed: () async {
                      print("presionando");
                      var respuesta = await ExpedienteService.postAntPatolog(
                        previous_surgeries: "previous_surgeries",
                        blood_transfusions: "blood_transfusions",
                        diabetes: "diabetes",
                        heart_diseases: "heart_diseases",
                        blood_pressure: "blood_pressure",
                        thyroid_diseases: "thyroid_diseases",
                        cancer: "cancer",
                        kidney_stones: "kidney_stones",
                        hepatitis: "hepatitis",
                        trauma: "trauma",
                        respiratory_diseases: "respiratory_diseases",
                        ets: "ets",
                        gastrointestinal_pathologies:
                            "gastrointestinal_pathologies",
                      ).then((response) {
                        if (response.statusCode == 200) {
                          print(response.jsonBody);
                        }
                        print('Response status: ${response.statusCode}');
                        print('Response body: ${response.jsonBody}');
                      });
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
