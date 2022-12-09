import 'dart:async';
import 'dart:convert';
import 'dart:html';

import 'package:aryy_front/_aryy_common_components/widgets/formulario/input_password_widget.dart';
import 'package:aryy_front/acceso_aplicacion/widgets/warning_helper_widget.dart';
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

Future<Post> fetchPost() async {
  print('fetchPost called');
  const url =
      ('https://app.aryymd.com/api/v1/patient/medical_history/vaccination_history');
  final uri = Uri.parse(url);
  final response = await http.post(uri);
  final body = response.body;
  final json = jsonDecode(body);

  if (response.statusCode == 200) {
    // Si la llamada al servidor fue exitosa, analiza el JSON
    return Post.fromJson(json.decode(response.body));
  } else {
    // Si la llamada no fue exitosa, lanza un error.
    throw Exception('Failed to load post');
  }
}

class Post {
  final String vaccine;
  final String dose;
  final String lote_number;
  final String aplication_date;

  Post(
      {required this.vaccine,
      required this.dose,
      required this.lote_number,
      required this.aplication_date});

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      vaccine: json['vaccine'],
      dose: json['dose'],
      lote_number: json['lote_number'],
      aplication_date: json['aplication_date'],
    );
  }
}

class VacunacionPruebaWidget extends StatefulWidget {
  const VacunacionPruebaWidget({Key? key}) : super(key: key);

  @override
  _VacunacionPruebaWidgetState createState() => _VacunacionPruebaWidgetState();
}

class _VacunacionPruebaWidgetState extends State<VacunacionPruebaWidget> {
  TextEditingController vacunaTextController = TextEditingController();
  TextEditingController dosisTextController = TextEditingController();
  TextEditingController num_loteTextController = TextEditingController();
  TextEditingController fech_aplicacionTextController = TextEditingController();
  late Future<Post> post;
  @override
  void initState() {
    post = fetchPost();
    super.initState();
  }

  @override
  void dispose() {
    vacunaTextController.dispose();
    dosisTextController.dispose();
    num_loteTextController.dispose();
    fech_aplicacionTextController.dispose();
    super.dispose();
  }

  String vaccine = '';
  String dose = '';
  String lote_number = '';
  String aplication_date = '';

  @override
  Widget build(BuildContext context) {
    final Future<Post> post;
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
                  textEditingController: vacunaTextController,
                  title: "Vacuna",
                  hintText: "Escribe aqui",
                ),
//------------------------------ ingresar dosis -------------------------------------------------
                InputTextMedicalRecord(
                  textEditingController: dosisTextController,
                  title: "Dosis",
                  hintText: "Escribe aqui",
                ),
//------------------------------ ingresar numero de lote -------------------------------------------------
                InputTextMedicalRecord(
                  textEditingController: num_loteTextController,
                  title: "Número de lote",
                  hintText: "Escribe aqui",
                ),
//------------------------------ ingresar fecha de aplicación -------------------------------------------------
                InputTextMedicalRecord(
                  textEditingController: fech_aplicacionTextController,
                  title: "Fecha de aplicación",
                  hintText: "Escribe aqui",
                ),
//------------------------------ Boton guardar -------------------------------------------------
                /*BotonFormularioExpandido(
                  text: "Guardar",
                  onPressed: () async {
                      if (vaccine.isNotEmpty &&
                          dose.isNotEmpty &&
                          lote_number.isNotEmpty &&
                          aplication_date.isNotEmpty) {
                        var respuesta = await ExpedienteService()
                            .postVacunacion(
                                vacunaTextController.text,
                                dosisTextController.text,
                                num_loteTextController.text,
                                fech_aplicacionTextController.text);
                        Navigator.pushNamed(context, "menu_expediente");
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
                )*/
              ],
            ),
          ),
        ),
      ),
    );
  }
}
