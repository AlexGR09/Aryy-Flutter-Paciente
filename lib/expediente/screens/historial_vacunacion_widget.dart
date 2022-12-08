import 'dart:async';

import 'package:aryy_front/expediente/repository/expediente_service.dart';

import '../../_aryy_common_components/widgets/appbar/appbar_widget.dart';
import '../../_aryy_common_components/widgets/appbar/modo_oscuro.dart';
import '../../_aryy_common_components/widgets/formulario/button_form_expanded_widget.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../widgets/description_text_widget.dart';
import '../widgets/input_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'messaje_response.dart';

class HistorialVacunacionWidget extends StatefulWidget {
  const HistorialVacunacionWidget({Key? key}) : super(key: key);

  @override
  _HistorialVacunacionWidgetState createState() =>
      _HistorialVacunacionWidgetState();
}

class _HistorialVacunacionWidgetState extends State<HistorialVacunacionWidget> {
  late InputTextMedicalRecord controllerVaccine;
  late InputTextMedicalRecord controllerDose;
  late InputTextMedicalRecord controllerLoteNumber;
  late InputTextMedicalRecord controllerAplicationDate;

  @override
  void initState() {
    /*controllerVaccine = new InputTextMedicalRecord();
    controllerDose = new InputTextMedicalRecord();
    controllerLoteNumber = new InputTextMedicalRecord();
    controllerAplicationDate = new InputTextMedicalRecord();*/
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  String vaccine = '';
  String dose = '';
  String lote_number = '';
  String aplication_date = '';

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
                const InputTextMedicalRecord(
                  title: "Vacuna",
                  hintText: "Escribe aqui",
                ),
                const InputTextMedicalRecord(
                  title: "Dosis",
                  hintText: "Escribe aqui",
                ),
                const InputTextMedicalRecord(
                  title: "Número de lote",
                  hintText: "Escribe aqui",
                ),
                const InputTextMedicalRecord(
                  title: "Fecha de aplicación",
                  hintText: "Escribe aqui",
                ),

                //-------- segunda opcion ---------------------------
                BotonFormularioExpandido(
                    text: "Guardar",
                    onPressed: () async {
                      if (vaccine.isNotEmpty &&
                          dose.isNotEmpty &&
                          lote_number.isNotEmpty &&
                          aplication_date.isNotEmpty) {
                        var respuesta = await ExpedienteService()
                            .postVacunacion(controllerVaccine.title, dose,
                                lote_number, aplication_date);
                      }
                    }
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
