import '../../_aryy_common_components/model/authentication_state.dart';
import '../../_aryy_common_components/widgets/aryy/aryy_logo_widget.dart';
import '../../_aryy_common_components/widgets/appbar/action_widget.dart';
import '../../_aryy_common_components/widgets/appbar/appbar_widget.dart';
import '../../_aryy_common_components/widgets/formulario/button_form_widget.dart';
import '../../_aryy_common_components/widgets/formulario/input_password_widget.dart';
import '../../_aryy_common_components/widgets/formulario/input_text_widget.dart';
import '../../styles/my_icons.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../bloc/authentication_bloc.dart';
import '../widgets/boton_autenticar_con.dart';
import '../widgets/divisor_widget.dart';
import '../widgets/warning_helper_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class RegistrarseWidget extends StatefulWidget {
  const RegistrarseWidget({Key? key}) : super(key: key);

  @override
  _RegistrarseWidgetState createState() => _RegistrarseWidgetState();
}

class _RegistrarseWidgetState extends State<RegistrarseWidget> {
  TextEditingController emailTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();
  TextEditingController passwordConfirmationTextController =
      TextEditingController();
  late AuthenticationBloc signinBloc;

// -- Cambiar esto  a flutter bloc
  late WarningHelper passwordWarning = clearWarning;
  late WarningHelper passwordConfirmationWarning = clearWarning;
  bool isPasswordLongEnough = true;

  WarningHelper verifyPasswordLongitude(String password) {
    return password.length < 8 ? passwordLengthWarning : clearWarning;
  }

  WarningHelper veryPasswordMatch() {
    return passwordTextController.text !=
            passwordConfirmationTextController.text
        ? passwordMatchWarning
        : clearWarning;
  }

  onPasswordChange(String password) async {
    passwordTextController.text = password;
    passwordWarning = verifyPasswordLongitude(password);
    passwordWarning = veryPasswordMatch();
  }

  onPasswordConfirmationChange(String password) async {
    passwordConfirmationTextController.text = password;
    passwordConfirmationWarning = verifyPasswordLongitude(password);
    passwordConfirmationWarning = veryPasswordMatch();
  }
  // -- Cambiar esto  a flutter bloc

  @override
  Widget build(BuildContext context) {
    signinBloc = BlocProvider.of<AuthenticationBloc>(context);
    return _handleCurrentSession();
  }

  Widget _handleCurrentSession() {
    // it can also be BlocBuilder<signinBloc, Future<bool>> if async
    return BlocBuilder<AuthenticationBloc, Authentication>(
      // state the same AryyChangeEvent data type
      builder: ((context, state) {
        switch (state) {
          case Authentication.authenticated:
            break;
          case Authentication.unauthenticated:
            break;
          case Authentication.uninitialized:
            break;
          default:
        }
        return signinScreen();
      }),
    );
  }

  Widget signinScreen() {
    return Scaffold(
      key: GlobalKey<ScaffoldState>(),
      appBar: const PreferredSize(
          preferredSize: Size(100, 80),
          child: AryyAppBar(
              actions: AryyAppbarAction(
                  routeName: 'iniciarsesion', text: "Iniciar Sesión"))),
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                const AryyLogo(paddingTop: 85, paddingBottom: 50),
//---------------------------  Correo  ---------------------------------------------------------------------------------------------------------------------
                const InputTextWidget(hintText: 'Ingrese un correo'),
//---------------------------  Contraseña  -----------------------------------------------------------------------------------------------------------------
                InputPasswordWidget(
                    textEditingController: passwordConfirmationTextController,
                    hintText: 'Ingrese una contraseña',
                    onChange: onPasswordChange,
                    warningLabel: passwordWarning),
//---------------------------  Confirmación Contraseña  ------------------------------------------------------------------------------------------------------
                InputPasswordWidget(
                    textEditingController: passwordConfirmationTextController,
                    hintText: 'Confirme su contraseña',
                    onChange: onPasswordConfirmationChange,
                    warningLabel: passwordWarning),
//---------------------------  Registrarse boton  ------------------------------------------------------------------------------------------------------------
                BotonFormulario(
                  text: "Registrarme",
                  onPressed: () async {
                    signinBloc.add(SigninEvent());
                    Navigator.pushNamed(context, "home2_inicio");
                    // Navigator.pushNamed(context, "registrarse_formulario");
                  },
                  isLoading: false,
                ),
                BotonFormulario(
                  text: "Registrarme Animación",
                  onPressed: () async {
                    await showDialog(
                      context: context,
                      builder: (alertDialogContext) {
                        return AlertDialog(
                          content: const Text('Datos guardados'),
                          actions: [
                            TextButton(
                              onPressed: () =>
                                  Navigator.pop(alertDialogContext),
                              child: const Text('Ok'),
                            ),
                          ],
                        );
                      },
                    );
                    // Navigator.pushNamed(context, "registrarse_formulario");
                  },
                  isLoading: false,
                ),
                const Divisor(text: "O inicia con"),
//---------------------------  Autenticación con Redes Sociales  -----------------------------------------------------------------------------------------------------------------
                Padding(
                  padding: const EdgeInsetsDirectional.only(top: 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(""),
                      BotonAutentificarCon(
                        assetName: GOOGLE,
                        isLabelVisible: false,
                      ),
                      BotonAutentificarCon(
                        assetName: FACEBOOK,
                        isLabelVisible: false,
                      ),
                      Text("")
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
