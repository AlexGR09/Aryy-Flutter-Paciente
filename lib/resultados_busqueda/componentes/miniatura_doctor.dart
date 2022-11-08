import '../../doctor/informacion_basica_widget.dart';
import '../../doctor/informacion_consulta_widget.dart';
import 'package:flutter/material.dart';

class InformacionMiniaturaDoctor extends StatefulWidget {
  const InformacionMiniaturaDoctor({super.key});

  @override
  State<InformacionMiniaturaDoctor> createState() =>
      _InformacionMiniaturaDoctorState();
}

class _InformacionMiniaturaDoctorState
    extends State<InformacionMiniaturaDoctor> {
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
        mostrarCedulaProfesional: false,
      ),
      const InformacionConsulta()
    ]);
  }
}
