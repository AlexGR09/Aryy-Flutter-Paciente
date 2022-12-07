import '../../_aryy_common_components/widgets/appbar/appbar_widget.dart';
import '../../_aryy_common_components/widgets/appbar/modo_oscuro.dart';
import '../../_aryy_common_components/widgets/formulario/button_form_expanded_widget.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../widgets/description_text_widget.dart';
import '../widgets/radio_widget.dart';
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
                const RadioButtonWidget(
                    title: '¿Tienes alguna cirugía previa?',
                    hintText: 'Escribe que cirugia(s)',
                    options: ['Si', 'No']),
                const RadioButtonWidget(
                    title: '¿Tienes alguna transfusión?',
                    hintText: 'Selecciona un tipo',
                    options: ['Si', 'No']),
                const RadioButtonWidget(
                    title: '¿Tienes diabetes?',
                    hintText: '¿Que tipo de diabetes?',
                    options: ['Si', 'No']),
                const RadioButtonWidget(
                    title: '¿Tienes cardiopatías?',
                    hintText: '¿Que tipo de cardiopatías?',
                    options: ['Si', 'No']),
                const RadioButtonWidget(
                    title: 'Qué tipo de presión arterial alta/baja tiene?',
                    hintText: '¿Que otro tipo de presión artereal tiene?',
                    options: ['Otro', 'Hipertensión', 'Hipotensión']),
                const RadioButtonWidget(
                    title: '¿Tienes enfermedades tiroideas?',
                    hintText: 'Escribe el padecimiento',
                    options: ['Si', 'No']),
                const RadioButtonWidget(
                    title: '¿Tienes cáncer?',
                    hintText: '¿Que tipo de cancer?',
                    options: ['Si', 'No']),
                const RadioButtonWidget(
                    title: '¿Tienes enfermedades de la sangre?',
                    hintText: '¿Que tipo enfermedad en la sangre padece?',
                    options: ['Si', 'No']),
                const RadioButtonWidget(
                    title: '¿Tienes cálculos renales?',
                    hintText: '¿Que tipo cálculos renales padece?',
                    options: ['Si', 'No']),
                const RadioButtonWidget(
                    title: 'Ha sufrido de hepatitis?',
                    hintText: '¿Que tipo de hepatitis?',
                    options: ['Si', 'No']),
                const RadioButtonWidget(
                    title: 'Ha sufrido de algún traumatísmo?',
                    hintText: '¿Que tipo de traumatísmo?',
                    options: ['Si', 'No']),
                const RadioButtonWidget(
                    title: 'Ha sufrido de patologías respiratorias?',
                    hintText: '¿Que tipo de patologías respiratorias?',
                    options: ['Si', 'No']),
                const RadioButtonWidget(
                    title: 'Ha sufrido de alguna patología gastrointestinal?',
                    hintText: '¿Que tipo de patología gastrointestinal?',
                    options: ['Si', 'No']),
                const RadioButtonWidget(
                    title:
                        'Ha sufrido de alguna enfermedades de transmision sexual?',
                    hintText: '¿Que tipo de nfermedades de transmision sexual?',
                    options: ['Si', 'No']),
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
