import '../../_aryy_common_components/widgets/appbar/appbar_widget.dart';
import '../../_aryy_common_components/widgets/appbar/modo_oscuro.dart';
import '../../_aryy_common_components/widgets/formulario/button_form_expanded_widget.dart';
import '../../backend/api_requests/api_calls.dart';
import '../../flutter_flow/flutter_flow_drop_down.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../repository/expediente_service.dart';
import '../widgets/description_text_widget.dart';
import '../widgets/input_text_widget.dart';
import '../widgets/radio_button_with_inputtext_trigger_widget.dart';
import '../widgets/select_widget.dart';
import 'package:flutter/material.dart';

class InformacionBasicaWidget extends StatefulWidget {
  const InformacionBasicaWidget({Key? key}) : super(key: key);

  @override
  _InformacionBasicaWidgetState createState() =>
      _InformacionBasicaWidgetState();
}

class _InformacionBasicaWidgetState extends State<InformacionBasicaWidget> {
  String? tipoSangreValue;
  TextEditingController food_allergyTextController = TextEditingController();
  TextEditingController drug_allergyTextController = TextEditingController();
  TextEditingController enviromental_allergyTextController =
      TextEditingController();
  TextEditingController weightTextController = TextEditingController();
  TextEditingController heightTextController = TextEditingController();
  TextEditingController blood_typeTextController = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    food_allergyTextController.dispose();
    drug_allergyTextController.dispose();
    enviromental_allergyTextController.dispose();
    weightTextController.dispose();
    heightTextController.dispose();
    blood_typeTextController.dispose();
    super.dispose();
  }

  String food_allergy = '';
  String drug_allergy = '';
  String enviromental_allergy = '';
  String weight = '';
  String height = '';
  String blood_type = '';

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
                const DescriptionText(
                    title: 'Informacion basica y alergias',
                    description:
                        'Agregar datos sobre las alergias que puedas\npadecer para tener esta informacion\nsiempre a la mano.'),
                /*const SelectWidget(
                    title: '¿Cual es tu grupo sanguineo?',
                    hintText: 'Selecciona tu tipo sanguineo',
                    options: ['Option 1']),*/
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: FutureBuilder<ApiCallResponse>(
                          future: TiposangreCall.call(),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50,
                                  height: 50,
                                  child: CircularProgressIndicator(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                  ),
                                ),
                              );
                            }
                            final tipoSangreTiposangreResponse = snapshot.data!;
                            return FlutterFlowDropDown<String>(
                              options: (TiposangreCall.nombre(
                                tipoSangreTiposangreResponse.jsonBody,
                              ) as List)
                                  .map<String>((s) => s.toString())
                                  .toList()
                                  .toList(),
                              onChanged: (val) =>
                                  setState(() => tipoSangreValue = val),
                              width: 180,
                              height: 45,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Montserrat',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                  ),
                              hintText: 'Selecciona tu tipo sanguineo',
                              fillColor: Colors.white,
                              elevation: 2,
                              borderColor: Colors.transparent,
                              borderWidth: 0,
                              borderRadius: 15,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  15, 15, 15, 15),
                              hidesUnderline: true,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                InputTextMedicalRecord(
                  textEditingController: heightTextController,
                  title: "¿Cuanto mides?",
                  hintText: 'Escribe aquí',
                ),
                InputTextMedicalRecord(
                  textEditingController: weightTextController,
                  title: "¿Cuanto pesas?",
                  hintText: 'Escribe aquí',
                ),
                /*const SelectWidget(
                    title: '¿Cuanto mides?',
                    hintText: 'Escribe aqui',
                    options: ['Option 1']),*/
                /*const SelectWidget(
                    title: '¿Cuanto pesas actualmente?',
                    hintText: 'Escribe aqui',
                    options: ['Option 1']),*/
                const RadioButtonWithInputTextTriggerWidget(
                    title: '¿Tienes alergias alimentarias?',
                    inputTextHintText: 'Ejemplo: cacahuate, fresas',
                    radioButtonOptions: ['Si', 'No']),
                const RadioButtonWithInputTextTriggerWidget(
                    title: '¿Tienes alergias a algun farmaco?',
                    inputTextHintText: 'Ejemplo: naproxeno, ibuprofeno',
                    radioButtonOptions: ['Si', 'No']),
                const RadioButtonWithInputTextTriggerWidget(
                    title: '¿Tienes alergias a factores ambientales?',
                    inputTextHintText: 'Ejemplo: polen, polvo',
                    radioButtonOptions: ['Si', 'No']),
                BotonFormularioExpandido(
                    text: 'Guardar',
                    onPressed: () async {
                      print("presionando");
                      var respuesta = await ExpedienteService.postInfoBasica(
                        food_allergy: "food_allergy",
                        drug_allergy: "drug_allergy",
                        enviromental_allergy: "enviromental_allergy",
                        weight: "weight",
                        height: "height",
                        blood_type: "blood_type",
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
