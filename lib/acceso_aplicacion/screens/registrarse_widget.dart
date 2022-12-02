import '../../_aryy_common_components/widgets/aryy/aryy_logo_widget.dart';
import '../../_aryy_common_components/widgets/appbar/action_widget.dart';
import '../../_aryy_common_components/widgets/appbar/appbar_widget.dart';
import '../../_aryy_common_components/widgets/formulario/button_form_widget.dart';
import '../../_aryy_common_components/widgets/formulario/input_password_widget.dart';
import '../../_aryy_common_components/widgets/formulario/input_text_widget.dart';
import '../../styles/my_icons.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../widgets/boton_autenticar_con.dart';
import '../widgets/divisor_widget.dart';
import '../widgets/warning_helper_widget.dart';
import 'package:flutter/material.dart';

class RegistrarseWidget extends StatefulWidget {
  const RegistrarseWidget({Key? key}) : super(key: key);

  @override
  _RegistrarseWidgetState createState() => _RegistrarseWidgetState();
}

class _RegistrarseWidgetState extends State<RegistrarseWidget> {
  TextEditingController passwordTextController = TextEditingController();
  TextEditingController passwordConfirmationTextController =
      TextEditingController();

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

  @override
  Widget build(BuildContext context) {
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
//---------------------------  Correo  -----------------------------------------------------------------------------------------------------------------
                const InputTextWidget(hintText: 'Ingrese un correo'),
//---------------------------  Contraseña  -----------------------------------------------------------------------------------------------------------------
                InputPasswordWidget(
                    textEditingController: passwordConfirmationTextController,
                    hintText: 'Ingrese una contraseña',
                    onChange: onPasswordChange,
                    warningLabel: passwordWarning),
//---------------------------  Confirmación Contraseña  -----------------------------------------------------------------------------------------------------------------
                InputPasswordWidget(
                    textEditingController: passwordConfirmationTextController,
                    hintText: 'Confirme su contraseña',
                    onChange: onPasswordConfirmationChange,
                    warningLabel: passwordWarning),
//---------------------------  Registrarse boton  -----------------------------------------------------------------------------------------------------------------
                BotonFormulario(
                    text: "Registrarme",
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
                    }),
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
