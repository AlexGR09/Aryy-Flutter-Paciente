import 'package:generic_bloc_provider/generic_bloc_provider.dart';

import '../../../flutter_flow/flutter_flow_theme.dart';
import '../../../flutter_flow/flutter_flow_widgets.dart';
import '../../bloc/paciente_bloc.dart';
import 'package:flutter/material.dart';

// - Monitorear la sesión del usuario

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  // ionstancia del paciente
  late PacienteBloc pacienteBloc;

  @override
  Widget build(BuildContext context) {
    // para poder utilizar el objeto paciente
    pacienteBloc = BlocProvider.of(context);
    return singInAryyUI();
  }

  // A que pantalla dirigir al usuario, según esté logeado
  Widget singInAryyUI() {
    return Container(
      alignment: Alignment.center,
      color: Colors.red,
      width: 100,
      height: 100,
      child: FFButtonWidget(
        onPressed: () {
          pacienteBloc.signIn();
          Navigator.pushNamed(context, "MenuScreen");
        },
        text: 'SignIn with Aryy',
        options: FFButtonOptions(
          width: 130,
          height: 60,
          color: FlutterFlowTheme.of(context).primaryColor,
          textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                fontFamily: 'Montserrat',
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
          borderSide: const BorderSide(
            color: Colors.transparent,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
