import '../styles/my_icons.dart';
import 'package:aryy_front/flutter_flow/flutter_flow_theme.dart';
import 'package:aryy_front/flutter_flow/flutter_flow_widgets.dart';
import 'package:aryy_front/vista_video/video_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MenuFrame extends StatelessWidget {
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
                        const EdgeInsetsDirectional.fromSTEB(22, 500, 22, 0),
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
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(22, 70, 22, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FFButtonWidget(
                          onPressed: () {
                            Navigator.pushNamed(context, "iniciarsesion");
                          },
                          text: 'Iniciar sesión',
                          options: FFButtonOptions(
                            width: 300,
                            height: 40,
                            color: Color(0xFF7900FF),
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Montserrat',
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                    ),
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(22, 20, 22, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FFButtonWidget(
                          onPressed: () {
                            Navigator.pushNamed(context, "Registrarse");
                          },
                          text: 'Registrarse',
                          options: FFButtonOptions(
                            width: 300,
                            height: 40,
                            //color: Color(0xFF7900FF),
                            color: Colors.white,
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Montserrat',
                                      //color: Colors.white,
                                      color: Color(0xFF7900FF),
                                      fontWeight: FontWeight.w500,
                                    ),
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
