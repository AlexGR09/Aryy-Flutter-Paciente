import '../bloc/login.dart';
import '../bloc/login_bloc.dart';
import '../widgets/boton_autenticar_con.dart';
import '../widgets/divisor_widget.dart';
import '../../styles/my_icons.dart';
import '../../_aryy_common_components/model/password_warning.dart';
import '../../_aryy_common_components/widgets/formulario/button_form_widget.dart';
import '../../_aryy_common_components/widgets/aryy/aryy_logo_widget.dart';
import '../../_aryy_common_components/widgets/formulario/input_password_widget.dart';
import '../../_aryy_common_components/widgets/formulario/input_text_widget.dart';
import '../../_aryy_common_components/widgets/appbar/action_widget.dart';
import '../../_aryy_common_components/widgets/appbar/appbar_widget.dart';
import '../../_aryy_common_components/widgets/appbar/modo_oscuro.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class IniciarsesionWidget extends StatefulWidget {
  const IniciarsesionWidget({Key? key}) : super(key: key);

  @override
  _IniciarsesionWidgetState createState() => _IniciarsesionWidgetState();
}

class _IniciarsesionWidgetState extends State<IniciarsesionWidget> {
  TextEditingController emailTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();
  late LoginBloc loginBloc;
  // Si pone mal la contraseña, mostrar el icono? o siempre visible?
  final bool isForgotyouPasswordVisible = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    emailTextController.dispose();
    passwordTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // para poder utilizar el objeto paciente
    loginBloc = BlocProvider.of<LoginBloc>(context);
    return _handleCurrentSession();
  }

  Widget _handleCurrentSession() {
    // it can also be BlocBuilder<PacienteBloc, Future<bool>>(
    return BlocBuilder<LoginBloc, bool>(
      // state the same AryyChangeEvent data type
      builder: ((context, state) {
        var sessionStateText = state ? "Active" : "Ended";
        return singInAryyUI();
      }),
    );
  }

  Widget singInAryyUI() {
    WarningLabel warningLabel = WarningLabel(
        text: "¿Olvidaste tu contraseña?",
        color: FlutterFlowTheme.of(context).primaryColor,
        icon: Icons.error);
    // () { Navigator.pushNamed(context, "verificar_identidad"); }
    return Scaffold(
      key: GlobalKey<ScaffoldState>(),
//---------------------------  Appbar
      appBar: const PreferredSize(
          preferredSize: Size(100, 80),
          child: AryyAppBar(
            title: DarkModeIcon(),
            actions:
                AryyAppbarAction(routeName: "Registrarse", text: "Registrarme"),
          )),
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
//---------------------------  Body
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: const EdgeInsetsDirectional.only(top: 60),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const AryyLogo(paddingTop: 30, paddingBottom: 40),
                  const InputTextWidget(hintText: 'Ingrese un usuario'),
                  InputPasswordWidget(
                    textController: emailTextController,
                    hintText: 'Ingrese una contraseña',
                    onChange: () {
                      print(emailTextController.text);
                    },
                    warningLabel: warningLabel,
                    isWarningVisible: isForgotyouPasswordVisible,
                  ),
                  BotonFormulario(
                      text: "Iniciar sesión",
                      onPressed: () {
                        LoginPaciente(
                            emailTextController: emailTextController,
                            passwordTextController: passwordTextController);
                        // Navigator.pushNamed(context, "home2_inicio");
                      }),
                  const Divisor(text: "O inicia con"),
                  const BotonAutentificarCon(
                    assetName: GOOGLE,
                    isLabelVisible: true,
                  ),
                  const BotonAutentificarCon(
                    assetName: FACEBOOK,
                    isLabelVisible: true,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
