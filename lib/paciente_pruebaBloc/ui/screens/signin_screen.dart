/*import 'dart:async';
import '../../bloc/paciente_bloc.dart';
import '../../../flutter_flow/flutter_flow_theme.dart';
import '../../../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import './menu_screen.dart';

// - Monitorear la sesión del usuario

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late PacienteBloc pacienteBloc;

  @override
  Widget build(BuildContext context) {
    pacienteBloc = BlocProvider.of<PacienteBloc>(context);
    return _handleCurrentSession();
  }

  Widget _handleCurrentSession() {
    return StreamBuilder(
        stream: pacienteBloc.authStatus,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData || snapshot.hasError) {
            return singInAryyUI();
          }
        });
  }

  Widget singInAryyUI() {
    return Container(
      alignment: Alignment.center,
      color: Colors.red,
      child: FFButtonWidget(
        onPressed: () {
          Navigator.pushNamed(context, "menu_stream");
        },
        text: 'SignIn with Aryy',
        options: FFButtonOptions(
          width: 200,
          height: 60,
          color: FlutterFlowTheme.of(context).primaryColor,
          textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.w500,
                color: Colors.white,
                fontSize: 15,
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
}*/
