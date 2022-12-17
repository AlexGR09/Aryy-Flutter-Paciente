import 'package:aryy_front/backend/api_requests/api_calls.dart';
import 'package:aryy_front/expediente/screens/antecedentes_patologicos2.dart';
import 'package:aryy_front/expediente/screens/vacunacionprueba2.dart';

import '../../_aryy_common_components/widgets/appbar/appbar_widget.dart';
import '../../_aryy_common_components/widgets/appbar/modo_oscuro.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../index.dart';
import '../widgets/button_medical_record_widget.dart';
import '../widgets/description_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MenuExpedienteWidget extends StatefulWidget {
  const MenuExpedienteWidget({Key? key}) : super(key: key);

  @override
  _MenuExpedienteWidgetState createState() => _MenuExpedienteWidgetState();
}

class _MenuExpedienteWidgetState extends State<MenuExpedienteWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
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
              children: const [
                DescriptionText(
                    title: 'Mi expediente médico',
                    description:
                        'Agrega datos sobre ti, sobre diagnosticos, enfermedades y tratamientos para tener esa información siempre a mano.'),
                ButtonMedicalRecord(
                    title: 'Información básica',
                    icon: FontAwesomeIcons.allergies,
                    materialPage: InformacionBasicaWidget()),
                ButtonMedicalRecord(
                    title: 'Antecedentes patológicos',
                    icon: FontAwesomeIcons.tablets,
                    materialPage: AntecedentesPatologicos2Widget()),
                ButtonMedicalRecord(
                    title: 'Antecedentes no patológicos',
                    icon: FontAwesomeIcons.tablets,
                    materialPage: AntecedentesNoPatologicosWidget()),
                ButtonMedicalRecord(
                    title: 'Antec. heredofamiliares',
                    icon: FontAwesomeIcons.tablets,
                    materialPage: AntecHeredofamiliaresWidget()),
                ButtonMedicalRecord(
                    title: 'Historial de vacunación',
                    icon: FontAwesomeIcons.tablets,
                    materialPage: HistorialVacunacion2Widget()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
