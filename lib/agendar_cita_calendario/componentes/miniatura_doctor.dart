import '../../doctor/informacion_basica_widget.dart';
import 'package:flutter/material.dart';

class InformacionMiniaturaDoctorAgenda extends StatefulWidget {
  const InformacionMiniaturaDoctorAgenda({super.key});

  @override
  State<InformacionMiniaturaDoctorAgenda> createState() =>
      _InformacionMiniaturaDoctorAgendaState();
}

class _InformacionMiniaturaDoctorAgendaState
    extends State<InformacionMiniaturaDoctorAgenda> {
  callback(action) {
    setState(() {
      action();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(crossAxisAlignment: WrapCrossAlignment.center, children: [
      InformacionBasicaDoctor(
        callbackFunction: callback,
        mostrarCedulaProfesional: true,
      ),
    ]);
  }
}
