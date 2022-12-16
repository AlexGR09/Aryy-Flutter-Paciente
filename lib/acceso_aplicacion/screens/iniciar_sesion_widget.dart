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
  late LoginBloc _loginBloc;
  late bool _isLoading = false;
//  late AryyUserRepository _userRepository;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    emailTextController.dispose();
    passwordTextController.dispose();
//    _loginBloc.close();
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
    // it can also be BlocBuilder<LoginBloc, Future<bool>> if async
    return BlocListener<LoginBloc, LoginState>(listener: ((context, state) {
      print("listener-BlocListener, state: ${state}");
    }), child: BlocBuilder<LoginBloc, LoginState>(
      builder: ((context, state) {
        print("builder-BlocBuilder, state: ${state}");
        switch (state) {
          case LoginState.loading:
            _isLoading = true;
            _verifyUserSessionStatus();
            break;
          case LoginState.success:
            return const Home2Widget();
          case LoginState.failure:
            //       //   isForgotyouPasswordVisible = true; // add alert - pending
            break;
          default:
        }
        return loginScreen();
      }),
    ));
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
                    text: "Iniciar sesión",
                    onPressed: () async {
                      _loginBloc
                          .add(LoginButtonPressed(email: '', password: ''));
                    },
                    isLoading: _isLoading,
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
