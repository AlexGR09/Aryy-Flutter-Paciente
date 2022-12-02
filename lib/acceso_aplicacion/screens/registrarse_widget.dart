import 'package:flutter_svg/svg.dart';

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
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController emailConfirmationTEController = TextEditingController();

  bool isPasswordLongEnough = true;

  // onPasswordChange(String password) {
  //   if (password.length < 8) return WarningType.passwordLength;
  //   if (textController1.text != textController2.text) {
  //     return WarningType.passwordMatch;
  //   }
  //   return WarningType.none;
  // }

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
                const InputTextWidget(hintText: 'Ingrese un correo'),
                InputPasswordWidget(
                    textController: emailTextEditingController,
                    hintText: 'Ingrese una contraseña',
                    onChange: () {
                      print(emailTextEditingController.text);
                    },
                    warningLabel: const WarningHelper(
                        text: "Al menos 8 caractéres",
                        color: Colors.orange,
                        icon: Icons.error)),
                InputPasswordWidget(
                    textController: emailConfirmationTEController,
                    hintText: 'Confirme su contraseña',
                    onChange: () {
                      print(emailConfirmationTEController.text);
                    },
                    warningLabel: const WarningHelper(
                        text: "Los campos no coinciden",
                        color: Colors.red,
                        icon: Icons.warning)),
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
