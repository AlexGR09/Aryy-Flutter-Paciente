import '../widgets/page_view_widget.dart';
import '../../styles/my_icons.dart';
import '../../_aryy_common_components/widgets/appbar/action_widget.dart';
import '../../_aryy_common_components/widgets/appbar/appbar_widget.dart';
import '../../_aryy_common_components/widgets/appbar/modo_oscuro.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BienvenidaWidget extends StatefulWidget {
  const BienvenidaWidget({Key? key}) : super(key: key);
  @override
  _BienvenidaWidgetState createState() => _BienvenidaWidgetState();
}

class _BienvenidaWidgetState extends State<BienvenidaWidget> {
  PageController? pageViewController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: const PreferredSize(
          preferredSize: Size(100, 80),
          child: AryyAppBar(
              title: DarkModeSwitch(),
              actions: AryyAppbarAction(
                  routeName: "registrarse_iniciosesion", text: "Omitir"))),
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: SizedBox(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.6,
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0, 0, 0, 30),
                            child: PageView(
                              controller: pageViewController ??=
                                  PageController(initialPage: 0),
                              scrollDirection: Axis.horizontal,
                              children: const [
                                SliderBienvendia(
                                    imageAsset: LAUNCH_ESPECIALISTAS,
                                    width: 350,
                                    height: 300,
                                    text:
                                        'Encuentra a un especialista de\nconfianza, agenda una cita y genera puntos'),
                                SliderBienvendia(
                                    imageAsset: LAUNCH_PASTILLERO,
                                    width: 300,
                                    height: 300,
                                    text:
                                        'Mantén un control de tus\nmedicamentos con nuestro\npastillero'),
                                SliderBienvendia(
                                    imageAsset: LAUNCH_LABORATORIOS,
                                    width: 300,
                                    height: 250,
                                    text:
                                        'Busca y cotiza tus an+alisi\nclinicos de laboratorio en un\nsolo lugar'),
                                SliderBienvendia(
                                    imageAsset: LAUNCH_MEDICINA,
                                    width: 300,
                                    height: 250,
                                    text:
                                        'Surte tu receta médica o de\nlibre venta y obtén\nrecompensas'),
                              ],
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0, 1),
                            child: Padding(
                              padding:
                                  const EdgeInsetsDirectional.only(bottom: 10),
                              child: SmoothPageIndicator(
                                controller: pageViewController ??=
                                    PageController(initialPage: 0),
                                count: 4,
                                axisDirection: Axis.horizontal,
                                onDotClicked: (i) {
                                  pageViewController!.animateToPage(
                                    i,
                                    duration: const Duration(milliseconds: 500),
                                    curve: Curves.ease,
                                  );
                                },
                                effect: const ExpandingDotsEffect(
                                  expansionFactor: 2,
                                  spacing: 8,
                                  radius: 16,
                                  dotWidth: 16,
                                  dotHeight: 4,
                                  dotColor: Color(0xC5D9D9D9),
                                  activeDotColor: Color(0xFFB380FF),
                                  paintStyle: PaintingStyle.fill,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
