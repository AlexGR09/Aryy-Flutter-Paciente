import 'package:aryy_front/index.dart';

import '../flutter_flow/flutter_flow_theme.dart';
import '../styles/my_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  _NavigationDrawerState createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext contex) => Drawer(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[buildHeader(context), buildMenuItems(contex)],
        ),
      ));

  Widget buildHeader(BuildContext context) => Material(
      color: Colors.white,
      child: InkWell(
          onTap: () {},
          child: Container(
            padding: const EdgeInsetsDirectional.fromSTEB(20, 60, 10, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    PERFIL_RELLENO,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                  child: Text(
                    'Nombre de usuario',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Montserrat',
                          color: const Color(0xFF7900FF),
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
              ],
            ),
          )));

  Widget buildMenuItems(BuildContext contex) => Container(
      padding: const EdgeInsets.all(24),
      child: Wrap(
        runSpacing: 16, // espacios verticales
        children: [
          for (var opcion in barraLateral)
            ListTile(
              leading: Icon(opcion.icono),
              title: Text(
                opcion.titulo,
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Montserrat',
                      color: const Color(0xFF4F565F),
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              onTap: () {
                // Clsoe navigation drawer before
                Navigator.pop(context);
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Home2Widget()));
              },
            )
        ],
      ));
}

List<opcionBarraLateral> barraLateral = <opcionBarraLateral>[
  opcionBarraLateral(Icons.person_outline_sharp, "Perfil"),
  opcionBarraLateral(Icons.favorite_border, "Favoritos"),
  opcionBarraLateral(Icons.emoji_events_outlined, "Recompensas"),
  opcionBarraLateral(Icons.discount_outlined, "Promociones"),
  opcionBarraLateral(Icons.payment_outlined, "Métodos de pago"),
  opcionBarraLateral(Icons.share_location_outlined, "Ubicaciones"),
  opcionBarraLateral(Icons.headphones_outlined, "Ayuda"),
  opcionBarraLateral(Icons.lock_outline, "Privacidad"),
  opcionBarraLateral(Icons.settings_outlined, "Configuración"),
  opcionBarraLateral(Icons.exit_to_app_outlined, "Cerrar sesión"),
];

// borrar despues de terminar
void AnteriorCodigo(BuildContext context) {
  Drawer nada() {
    return Drawer(
      elevation: 16,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20, 60, 10, 0),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20, 60, 20, 0),
            child: ListView(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                InkWell(
                  onTap: () async {
                    context.pushNamed('Barra_lateral_perfil');
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SvgPicture.asset(
                        PERFIL,
                        width: 25,
                        height: 25,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                        child: Text(
                          'Perfil',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Montserrat',
                                    color: Color(0xFF4F565F),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                  child: InkWell(
                    onTap: () async {
                      context.pushNamed('Barra_lateral_favoritos');
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SvgPicture.asset(
                          FAVORITO,
                          width: 25,
                          height: 25,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                          child: Text(
                            'Favoritos',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Montserrat',
                                      color: Color(0xFF4F565F),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                  child: InkWell(
                    onTap: () async {
                      context.pushNamed('Barra_lateral_recompensas');
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SvgPicture.asset(
                          RECOMPENSAS,
                          width: 25,
                          height: 25,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                          child: Text(
                            'Recompensas',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Montserrat',
                                      color: Color(0xFF4F565F),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                  child: InkWell(
                    onTap: () async {
                      context.pushNamed('Barra_lateral_promociones');
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SvgPicture.asset(
                          PROMOCIONES,
                          width: 25,
                          height: 25,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                          child: Text(
                            'Promociones',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Montserrat',
                                      color: Color(0xFF4F565F),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                  child: InkWell(
                    onTap: () async {
                      context.pushNamed('Barra_lateral_metodopago');
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SvgPicture.asset(
                          METODOS_PAGO,
                          width: 25,
                          height: 25,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                          child: Text(
                            'Metodos de pago',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Montserrat',
                                      color: Color(0xFF4F565F),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                  child: InkWell(
                    onTap: () async {
                      context.pushNamed('Barra_lateral_ubicaciones');
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SvgPicture.asset(
                          UBICACIONES,
                          width: 25,
                          height: 25,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                          child: Text(
                            'Ubicaciones',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Montserrat',
                                      color: Color(0xFF4F565F),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                  child: InkWell(
                    onTap: () async {
                      context.pushNamed('Barra_lateral_ayuda');
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SvgPicture.asset(
                          AYUDA,
                          width: 25,
                          height: 25,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                          child: Text(
                            'Ayuda',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Montserrat',
                                      color: Color(0xFF4F565F),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                  child: InkWell(
                    onTap: () async {
                      context.pushNamed('Barra_lateral_privacidad');
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SvgPicture.asset(
                          PRIVACIDAD,
                          width: 25,
                          height: 25,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                          child: Text(
                            'Privacidad',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Montserrat',
                                      color: Color(0xFF4F565F),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                  child: InkWell(
                    onTap: () async {
                      context.pushNamed('Barra_lateral_configuraciones');
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SvgPicture.asset(
                          CONFIGURACIONES,
                          width: 25,
                          height: 25,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                          child: Text(
                            'Configuración',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Montserrat',
                                      color: Color(0xFF4F565F),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                  child: InkWell(
                    onTap: () async {
                      context.pushNamed('BL_configuracion');
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SvgPicture.asset(
                          CERRAR_SESION,
                          width: 25,
                          height: 25,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                          child: Text(
                            'Cerrar sesion',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Montserrat',
                                      color: const Color(0xFF4F565F),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class opcionBarraLateral {
  IconData icono;
  String titulo;
  opcionBarraLateral(this.icono, this.titulo);
}
