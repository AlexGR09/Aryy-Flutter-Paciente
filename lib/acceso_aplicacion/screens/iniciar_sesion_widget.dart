import 'package:aryy_front/index.dart';
import '../../_aryy_common_components/widgets/formulario/button_form_widget.dart';
import '../../_aryy_common_components/widgets/aryy/aryy_logo_widget.dart';
import '../../_aryy_common_components/widgets/formulario/input_password_widget.dart';
import '../../_aryy_common_components/widgets/formulario/input_text_widget.dart';
import '../../_aryy_common_components/widgets/appbar/action_widget.dart';
import '../../_aryy_common_components/widgets/appbar/appbar_widget.dart';
import '../../_aryy_common_components/widgets/appbar/modo_oscuro.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../styles/my_icons.dart';
import '../bloc/login_bloc.dart';
import '../bloc/login_state.dart';
import '../model/warning_label.dart';
import '../widgets/boton_autenticar_con.dart';
import '../widgets/divisor_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class IniciarsesionWidget extends StatefulWidget {
  const IniciarsesionWidget({Key? key}) : super(key: key);

  @override
  _IniciarsesionWidgetState createState() => _IniciarsesionWidgetState();
}

class _IniciarsesionWidgetState extends State<IniciarsesionWidget> {
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();
  late LoginState _loginState = LoginState.initial;
  late LoginBloc _loginBloc;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _emailTextController.dispose();
    _passwordTextController.dispose();
    _loginBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _loginBloc = BlocProvider.of<LoginBloc>(context);
    return _handleCurrentSession();
  }

  void _verifyUserSessionStatus() async {
    await Future.delayed(const Duration(milliseconds: 1300),
        () => _loginBloc.add(LoginStatusChangedEvent()));
  }

  Widget _handleCurrentSession() {
    // it can also be BlocBuilder<LoginBloc, Future<bool>> if async is needed
    return BlocListener<LoginBloc, LoginState>(listener: ((context, state) {
      switch (state) {
        case LoginState.loading:
          _verifyUserSessionStatus();
          break;
        case LoginState.failure:
          Future.delayed(
              Duration.zero,
              () => showDialog(
                    context: context,
                    builder: (alertDialogContext) {
                      return AlertDialog(
                        content:
                            const Text('Datos incorrectos, intente de nuevo.'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(alertDialogContext),
                            child: const Text('Ok'),
                          ),
                        ],
                      );
                    },
                  ));
          break;
        default:
      }
    }), child: BlocBuilder<LoginBloc, LoginState>(
      builder: ((context, state) {
        _loginState = state;
        if (_loginState == LoginState.success) {
          return const Home2Widget();
        }
        return loginScreen();
      }),
    ));
  }

  Widget loginScreen() {
    // () { Navigator.pushNamed(context, "verificar_identidad"); }
    return Scaffold(
      key: GlobalKey<ScaffoldState>(),
//---------------------------  Appbar    ---------------------------
      appBar: const PreferredSize(
          preferredSize: Size(100, 80),
          child: AryyAppBar(
            title: DarkModeIcon(),
            actions:
                AryyAppbarAction(routeName: "registrarse", text: "Registrarme"),
          )),
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
//---------------------------  Body    ---------------------------
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
//---------------------------  Input texts    ---------------------------
                  InputTextWidget(
                    hintText: 'Ingrese un correo',
                    textEditingController: _emailTextController,
                  ),
                  InputPasswordWidget(
                      hintText: 'Ingrese una contraseña',
                      textEditingController: _passwordTextController,
                      onChange: (String password) {},
                      // Mostrar mensaje de "Olvidaste tu contraseña?"
                      warningLabel: forgotYourPassword),
                  BotonFormulario(
                    text: "Iniciar sesión",
                    onPressed: () async {
                      _loginBloc.add(LoginEvent(
                          email: _emailTextController.text,
                          password: _passwordTextController.text));
                    },
                    isLoading: _loginState == LoginState.loading,
                    // Logout -> authenticationBloc.dispatch(LoggedOut());
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
