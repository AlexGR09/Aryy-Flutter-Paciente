import 'package:aryy_front/acceso_aplicacion/bloc/login_states.dart';
import 'package:aryy_front/acceso_aplicacion/repository/aryy_user_repository.dart';
import 'package:aryy_front/index.dart';
import '../../_aryy_common_components/model/authentication_states.dart';
import '../../_aryy_common_components/widgets/formulario/button_form_widget.dart';
import '../../_aryy_common_components/widgets/aryy/aryy_logo_widget.dart';
import '../../_aryy_common_components/widgets/formulario/input_password_widget.dart';
import '../../_aryy_common_components/widgets/formulario/input_text_widget.dart';
import '../../_aryy_common_components/widgets/appbar/action_widget.dart';
import '../../_aryy_common_components/widgets/appbar/appbar_widget.dart';
import '../../_aryy_common_components/widgets/appbar/modo_oscuro.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../styles/my_icons.dart';
import '../bloc/authentication_bloc.dart';
import '../bloc/login_bloc.dart';
import '../widgets/boton_autenticar_con.dart';
import '../widgets/divisor_widget.dart';
import '../widgets/warning_helper_widget.dart';
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
  // Si pone mal la contraseña, mostrar el icono? o siempre visible?
  late bool isForgotyouPasswordVisible = false;
  late AuthenticationBloc _authenticationBloc;
  late LoginBloc _loginBloc;
  late AryyUserRepository _userRepository;

  @override
  void initState() {
    _authenticationBloc = BlocProvider.of<AuthenticationBloc>(context);
    _loginBloc = LoginBloc(
//      userRepository: _userRepository,
      authenticationBloc: _authenticationBloc,
    );
    super.initState();
  }

  @override
  void dispose() {
    emailTextController.dispose();
    passwordTextController.dispose();
    _loginBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _handleCurrentSession();
  }

  void _verifyUserSessionStatus() async {
    await Future<void>.delayed(const Duration(seconds: 1));
//    loginBloc.add(AuthenticationStatusEvent());
  }

  Widget _handleCurrentSession() {
    // it can also be BlocBuilder<LoginBloc, Future<bool>> if async
    // return BlocBuilder<AuthenticationBloc, Authentication>(
    return BlocBuilder<LoginBloc, LoginState>(
        bloc: _loginBloc,
        // state the same AryyChangeEvent data type
        builder: (BuildContext context, LoginState state) {
          //   isForgotyouPasswordVisible = true; // add alert - pending
          switch (state) {
            case LoginState.loading:
              print('loading');
              break;
            case LoginState.failure:
              print("show failure");
              break;
            default:
          }
          return loginScreen();
        });
  }

  Widget loginScreen() {
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
                  const InputTextWidget(hintText: 'Ingrese un correo'),
                  InputPasswordWidget(
                      textEditingController: emailTextController,
                      hintText: 'Ingrese una contraseña',
                      onChange: (String password) {
                        print(emailTextController.text);
                      },
                      // Mostrar mensaje de "Olvidaste tu contraseña?"
                      warningLabel: clearWarning),
                  BotonFormulario(
                      // Mostrar mensaje de bienvenida de aryy api
                      // Mostar ese icono de "cargando" después de hacer click aqui también
                      text: "Iniciar sesión",
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
                      }
                      // Logout -> authenticationBloc.dispatch(LoggedOut());
                      // onPressed: () {
                      //   loginBloc.add(LoginEvent(
                      //       email: emailTextController.text,
                      //       password: passwordTextController.text));
                      //   Navigator.pushNamed(context, "home2_inicio");
                      // }
                      ),
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
