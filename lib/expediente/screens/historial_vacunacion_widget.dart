import '../../_aryy_common_components/widgets/appbar/appbar_widget.dart';
import '../../_aryy_common_components/widgets/appbar/modo_oscuro.dart';
import '../../_aryy_common_components/widgets/formulario/button_form_expanded_widget.dart';
import '../../backend/api_requests/api_calls.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_widgets.dart';
import '../repository/expediente_service.dart';
import '../widgets/description_text_widget.dart';
import '../widgets/input_text_widget.dart';
import 'package:flutter/material.dart';

import 'menu_expediente_widget.dart';

class HistorialVacunacionWidget extends StatefulWidget {
  const HistorialVacunacionWidget({Key? key}) : super(key: key);

  @override
  _HistorialVacunacionWidgetState createState() =>
      _HistorialVacunacionWidgetState();
}

class _HistorialVacunacionWidgetState extends State<HistorialVacunacionWidget> {
  ApiCallResponse? apiResulvaccine;
  TextEditingController vacunaController = TextEditingController();
  TextEditingController dosisController = TextEditingController();
  TextEditingController num_loteController = TextEditingController();
  TextEditingController fech_aplicacionController = TextEditingController();
  /*TextEditingController? vacunaController;
  TextEditingController? dosisController;
  TextEditingController? num_loteController;
  TextEditingController? fech_aplicacionController;*/
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    dosisController = TextEditingController();
    vacunaController = TextEditingController();
    num_loteController = TextEditingController();
    fech_aplicacionController = TextEditingController();
  }

  @override
  void dispose() {
    vacunaController?.dispose();
    dosisController?.dispose();
    num_loteController?.dispose();
    fech_aplicacionController?.dispose();
    super.dispose();
  }

  /* String vaccine = '';
  String dose = '';
  String lote_number = '';
  String aplication_date = '';*/

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
                    title: 'Historial de vacunación',
                    description:
                        'Comparte información sobre tu historial de vacunación, y crea una cartilla de vacunación digital.'),
//------------------------------ ingresar vacuna -------------------------------------------------
                InputTextMedicalRecord(
                  textEditingController: vacunaController,
                  title: "Vacuna",
                  hintText: "Escribe aqui",
                ),
//------------------------------ ingresar dosis -------------------------------------------------
                InputTextMedicalRecord(
                  textEditingController: dosisController,
                  title: "Dosis",
                  hintText: "Escribe aqui",
                ),
//------------------------------ ingresar numero de lote -------------------------------------------------
                InputTextMedicalRecord(
                  textEditingController: num_loteController,
                  title: "Número de lote",
                  hintText: "Escribe aqui",
                ),
//------------------------------ ingresar fecha de aplicación -------------------------------------------------
                InputTextMedicalRecord(
                  textEditingController: fech_aplicacionController,
                  title: "Fecha de aplicación",
                  hintText: "Escribe aqui",
                ),
//------------------------------ Boton guardar -------------------------------------------------
                BotonFormularioExpandido(
                  text: "Guardar",
                  onPressed: () async {
                    print("presionando");
                    apiResulvaccine = await VaccinationCall.call(
                      vaccine: vacunaController.text,
                      dose: dosisController.text,
                      lotNumber: num_loteController.text,
                      applicationDate: fech_aplicacionController.text,
                    );
                    if ((apiResulvaccine?.succeeded ?? true)) {
                      var confirmDialogResponse = await showDialog<bool>(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                title: Text('¿Desea guardar los cambios?'),
                                actions: [
                                  TextButton(
                                    onPressed: () => Navigator.pop(
                                        alertDialogContext, false),
                                    child: Text('Cancelar'),
                                  ),
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(alertDialogContext, true),
                                    child: Text('Confirmar'),
                                  ),
                                ],
                              );
                            },
                          ) ??
                          false;
                      if (confirmDialogResponse) {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MenuExpedienteWidget(),
                          ),
                        );
                      } else {
                        Navigator.pop(context);
                      }
                    }
                    setState(() {});
                  },
                  /*onPressed: () async {
                      print("presionando");
                      var respuesta = await ExpedienteService.postVacunacion(
                        vaccine: "vacuna",
                        dose: "dosis",
                        lote_number: "numero de lote",
                        aplication_date: "fecha de vacunacion",
                      ).then((response) {
                        if (response.statusCode == 200) {
                          print(response.jsonBody);
                        }
                        print('Response status: ${response.statusCode}');
                        print('Response body: ${response.jsonBody}');
                      });
                      /*if (vaccine.isNotEmpty &&
                          dose.isNotEmpty &&
                          lote_number.isNotEmpty &&
                          aplication_date.isNotEmpty) {
                        var respuesta = await ExpedienteService.postVacunacion(
                          vaccine: "vacuna",
                          dose: "dosis",
                          lote_number: "numero de lote",
                          aplication_date: "fecha de vacunacion",
                        )
                            /*.postVacunacion(
                                vacunaTextController.text,
                                dosisTextController.text,
                                num_loteTextController.text,
                                fech_aplicacionTextController.text)*/
                            .then((value) => print("value: {$value}"));
                        //Navigator.pushNamed(context, "menu_expediente");
                      }*/
                    }*/ //ON PRESSED
                  /*onPressed: () {
                      if (vaccine.isNotEmpty &&
                          dose.isNotEmpty &&
                          lote_number.isNotEmpty &&
                          aplication_date.isNotEmpty) {
                            var respuesta = await ExpedienteService().postVacunacion(vaccine, dose, lote_number, aplication_date);
                      } 
                    }*/
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
