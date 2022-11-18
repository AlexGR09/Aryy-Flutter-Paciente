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

  @override
  Widget build(BuildContext context) {
    // para poder utilizar el objeto paciente
    pacienteBloc = BlocProvider.of<PacienteBloc>(context);
    return _handleCurrentSession();
  }

  Widget _handleCurrentSession() {
    return BlocBuilder<PacienteBloc, int>(
      // state represent the same AryyChangeEvent data type
      builder: ((context, state) {
        print("handleSession");
        return singInAryyUI();
      }),
    );

    // Usage of Flutter.StreamBuilder (listener)
    // return StreamBuilder<bool>(
    //     stream: pacienteBloc.authStatus,
    //     // builder es la respuesta del stream
    //     builder: (BuildContext context, AsyncSnapshot snapshot) {
    //       if (snapshot.connectionState == ConnectionState.waiting) {
    //         return CircularProgressIndicator();
    //       } else if (snapshot.connectionState == ConnectionState.active ||
    //           snapshot.connectionState == ConnectionState.done) {
    //         if (snapshot.hasError) {
    //           print(snapshot.error);
    //           return const Text('Errors');
    //         } else if (snapshot.hasData) {
    //           print("snapshotdata:${snapshot.data.toString()}");
    //           return snapshot.data ? MenuScreen() : singInAryyUI();
    //         } else {
    //           return const Text('Empty data');
    //         }
    //       } else {
    //         return Text('State: ${snapshot.connectionState}');
    //       }
    //     });
  }

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
//                pacienteBloc.add(pacienteBloc.signIn());
                print("onPressed");
                context.read<PacienteBloc>().add(const AryyChangeEvent(1));
                //pacienteBloc.signIn().then((String result) => print('$result'));
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
                /*pacienteBloc
                    .singOut()
                    .then((String result) => print('$result'));*/
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
              text: 'Menu',
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
