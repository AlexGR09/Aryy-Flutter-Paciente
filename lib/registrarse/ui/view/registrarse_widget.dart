import '../../../aryy_common_components/appbar/appbar_widget.dart';
import '../../../aryy_common_components/formulario/button_widget.dart';
import '../../../aryy_common_components/modo_oscuro/modo_oscuro.dart';
import '../widgets/button_registrarse_con.dart';
import '../widgets/input_password_widget.dart';
import '../widgets/input_text_widget.dart';
import '../../../styles/my_icons.dart';
import '../../../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegistrarseWidget extends StatefulWidget {
  const RegistrarseWidget({Key? key}) : super(key: key);

  @override
  _RegistrarseWidgetState createState() => _RegistrarseWidgetState();
}

class _RegistrarseWidgetState extends State<RegistrarseWidget> {
  TextEditingController textController1 = TextEditingController();
  TextEditingController textController2 = TextEditingController();

  bool isPasswordLongEnough = true;

  onPasswordChange(String password) {
    if (password.length < 8) return WarningType.passwordLength;
    if (textController1.text != textController2.text) {
      return WarningType.passwordMatch;
    }
    return WarningType.none;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: GlobalKey<ScaffoldState>(),
      appBar: PreferredSize(
          preferredSize: const Size(100, 80),
          child: AryyAppBar(
              actions: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(22, 0, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 30, 0),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "iniciarsesion");
                    },
                    child: Text(
                      'Inicar sesión',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Montserrat',
                            color: Color(0xC586898C),
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ))),
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(22, 40, 22, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        ARYY_LOGO_MORADO,
                        width: 180,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
//---------------------------  Input text: usuario, correo, contraseña  -----------------------------------------------------------------------------------------------------------------
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(22, 40, 22, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const InputTextWidget(hintText: 'Ingrese un usuario'),
                          const InputTextWidget(hintText: 'Ingrese un correo'),
                          InputPasswordWidget(
                            textController: textController1,
                            hintText: 'Ingrese una contraseña',
                            onChangeFunction: onPasswordChange,
                          ),
                          InputPasswordWidget(
                            textController: textController2,
                            hintText: 'Confirme su contraseña',
                            onChangeFunction: onPasswordChange,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
//---------------------------  Registrase btn  -----------------------------------------------------------------------------------------------------------------
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BotonFormulario(
                        text: 'Registrarme',
                        onPressedFunction: () async {
                          await showDialog(
                            context: context,
                            builder: (alertDialogContext) {
                              return AlertDialog(
                                content: Text('Datos guardados'),
                                actions: [
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(alertDialogContext),
                                    child: Text('Ok'),
                                  ),
                                ],
                              );
                            },
                          );
                          //context.pushNamed('Registrarse_formulario'); //NO ME SIRVE POR EL MOMENTO
                          Navigator.pushNamed(
                              context, "registrarse_formulario");
                        },
                      ),
                    ],
                  ),
                ),
//---------------------------  Registrase con redes sociales btn  -----------------------------------------------------------------------------------------------------------------
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(22, 30, 22, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'O regístrate con',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Montserrat',
                                      color: const Color(0xFFCCCCCC),
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 20, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: const [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 40, 0),
                                  child: RegistarseConButton(
                                    iconName: GOOGLE,
                                  ),
                                ),
                                RegistarseConButton(iconName: FACEBOOK),
                              ],
                            ),
                          ),
                        ],
                      ),
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
