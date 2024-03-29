import '../../_aryy_common_components/widgets/aryy/aryy_logo_widget.dart';
import '../../_aryy_common_components/widgets/appbar/action_widget.dart';
import '../../_aryy_common_components/widgets/appbar/appbar_widget.dart';
import '../../_aryy_common_components/widgets/formulario/button_form_widget.dart';
import '../../_aryy_common_components/widgets/formulario/input_number_widget.dart';
import '../../_aryy_common_components/widgets/formulario/input_password_widget.dart';
import '../../_aryy_common_components/widgets/formulario/input_text_widget.dart';
import '../../index.dart';
import '../../styles/my_icons.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../bloc/signin_bloc.dart';
import '../bloc/signin_state.dart';
import '../model/warning_label.dart';
import '../widgets/boton_autenticar_con.dart';
import '../widgets/divisor_widget.dart';
import '../widgets/password_warning_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class RegistrarseWidget extends StatefulWidget {
  const RegistrarseWidget({Key? key}) : super(key: key);

  @override
  _RegistrarseWidgetState createState() => _RegistrarseWidgetState();
}

class _RegistrarseWidgetState extends State<RegistrarseWidget> {
  late PasswordWarning _passwordConfirmationWarning = clearWarning;
  late TextEditingController _passwordConfirmationTextController;
  late TextEditingController _phoneNumberTextController;
  late TextEditingController _passwordTextController;
  late TextEditingController _emailTextController;
  late PasswordWarning _passwordWarning = clearWarning;
  late SigninState _signinState = SigninState.initial;
  late SigninBloc _signinBloc;

  @override
  void initState() {
    super.initState();
    _emailTextController = TextEditingController();
    _passwordTextController = TextEditingController();
    _phoneNumberTextController = TextEditingController();
    _passwordConfirmationTextController = TextEditingController();
  }

  @override
  void dispose() {
    _emailTextController.dispose();
    _passwordTextController.dispose();
    _phoneNumberTextController.dispose();
    _passwordConfirmationTextController.dispose();
    _signinBloc.close();
    super.dispose();
  }

  void _verifyUserSessionStatus() async {
    await Future.delayed(const Duration(milliseconds: 1300),
        () => _signinBloc.add(LoginStatusChangedEvent()));
  }

  @override
  Widget build(BuildContext context) {
    _signinBloc = BlocProvider.of<SigninBloc>(context);
    return _handleCurrentSession();
  }

  Widget _handleCurrentSession() {
    // it can also be BlocBuilder<signinBloc, Future<bool>> if async
    return BlocListener<SigninBloc, SigninState>(listener: ((context, state) {
      _passwordWarning = _passwordConfirmationWarning = clearWarning;
      _signinState = state;
      print("receiving state: $_signinState");
      switch (_signinState) {
        case SigninState.passwordMismatch:
          _passwordWarning =
              _passwordConfirmationWarning = passwordMatchWarning;
          break;
        case SigninState.passwordNolongEnough:
          _passwordWarning = passwordLengthWarning;
          break;
        case SigninState.passwordConfirmationNolongEnough:
          _passwordConfirmationWarning = passwordLengthWarning;
          break;
        case SigninState.loading:
          _verifyUserSessionStatus();
          break;
        case SigninState.failure:
          break;
        default:
      }
    }), child: BlocBuilder<SigninBloc, SigninState>(
      builder: ((context, state) {
        if (state == SigninState.success) {
          return const Home2Widget();
        }
        return signinScreen();
      }),
    ));
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
//---------------------------  Número de teléfono  ---------------------------------------------------------------------------------------------------------------------
                InputNumberWidget(
                  hintText: "Número de teléfono",
                  textEditingController: _phoneNumberTextController,
                ),
//---------------------------  Correo  ---------------------------------------------------------------------------------------------------------------------
                InputTextWidget(
                  hintText: 'Ingrese un correo',
                  textEditingController: _emailTextController,
                ),
//---------------------------  Contraseña  -----------------------------------------------------------------------------------------------------------------
                InputPasswordWidget(
                    textEditingController: _passwordTextController,
                    hintText: 'Ingrese una contraseña',
                    onChange:
                        (String password) {}, // _signinBloc.onPasswordChange,
                    warningLabel: _passwordWarning),
//---------------------------  Confirmación Contraseña  ------------------------------------------------------------------------------------------------------
                InputPasswordWidget(
                    textEditingController: _passwordConfirmationTextController,
                    hintText: 'Confirme su contraseña',
                    onChange: (String
                        password) {}, // _signinBloc.onPasswordConfirmationChange,
                    warningLabel: _passwordConfirmationWarning),
//---------------------------  Registrarse boton  ------------------------------------------------------------------------------------------------------------
                BotonFormulario(
                  text: "Registrarme",
                  onPressed: () async {
                    _signinBloc.signin(
                        emailphonenumber: _emailTextController.text,
                        password: _passwordTextController.text,
                        passwordConfirmation:
                            _passwordConfirmationTextController.text);

                    // Navigator.pushNamed(context, "registrarse_formulario");
                  },
                  isLoading: _signinState == SigninState.loading,
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
