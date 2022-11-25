import '../../styles/my_icons.dart';
import '../../_aryy_common_components/widgets/formulario/button_form_inversed_widget.dart';
import '../../_aryy_common_components/widgets/formulario/button_form_widget.dart';
import 'package:aryy_front/acceso_aplicacion/widgets/video_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class RegistroInicioSesion extends StatelessWidget {
  PageController pageController = PageController();
  final Duration _animationDuration = const Duration(milliseconds: 500);

  void _changePage(int page) {
    pageController.animateToPage(page,
        duration: _animationDuration, curve: Curves.easeIn);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        VideoWidget(),
        Material(
          color: Colors.transparent,
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0, 500, 0, 30),
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
                  BotonFormulario(
                      text: "Registrarse",
                      onPressed: () =>
                          {Navigator.pushNamed(context, "registrarse")}),
                  BotonFormularioInverso(
                      text: "Iniciar sesión",
                      onPressed: () =>
                          {Navigator.pushNamed(context, "iniciarsesion")}),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
