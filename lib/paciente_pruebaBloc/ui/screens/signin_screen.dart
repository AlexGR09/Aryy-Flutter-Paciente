import 'dart:async';
import './menu_screen.dart';
import '../../bloc/paciente_bloc.dart';
import '../../../flutter_flow/flutter_flow_theme.dart';
import '../../../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

// - Monitorear la sesión del usuario

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  // testing bloc
  late PacienteBloc pacienteBloc;
  late String sessionStateText;

  @override
  Widget build(BuildContext context) {
    // para poder utilizar el objeto paciente
    pacienteBloc = BlocProvider.of<PacienteBloc>(context);
    return _handleCurrentSession();
  }

  Widget _handleCurrentSession() {
    // it can also be BlocBuilder<PacienteBloc, Future<bool>>(
    return BlocBuilder<PacienteBloc, bool>(
      // state the same AryyChangeEvent data type
      builder: ((context, state) {
        sessionStateText = state ? "Active" : "Ended";
        return singInAryyUI();
      }),
    );
  }

// -
  Widget singInAryyUI() {
    return Container(
        alignment: Alignment.center,
        color: Colors.red,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FFButtonWidget(
              onPressed: () {
                pacienteBloc.add(const LoginEvent());
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
            FFButtonWidget(
              onPressed: () {
                pacienteBloc.add(const LogoutEvent());
                // context.read<PacienteBloc>().add(const AryyChangeEvent(false));
              },
              text: 'SignedOut with Aryy',
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
            FFButtonWidget(
              onPressed: () {
                //Navigator.pushNamed(context, "singin_bloc");
              },
              text: sessionStateText,
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
          ],
        ));
  }
}
