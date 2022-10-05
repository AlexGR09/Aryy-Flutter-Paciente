import './barra_lateral.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../styles/my_icons.dart';
import 'package:flutter/material.dart';

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

  Widget buildHeader(BuildContext context) => Container(
        color: Colors.white12,
        padding: const EdgeInsetsDirectional.fromSTEB(25, 30, 10, 20),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 50,
              height: 30,
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
                'Alethia Imperia',
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Montserrat',
                      color: const Color(0xFF7900FF),
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
          ],
        ),
      );

  Widget buildMenuItems(BuildContext contex) => Container(
          child: Wrap(
        runSpacing: 12, // espacios verticales
        children: [
          const Divider(color: Colors.black38),
          for (var opcion in barraLateral)
            ListTile(
              contentPadding: const EdgeInsetsDirectional.fromSTEB(40, 0, 0, 0),
              leading: Icon(
                opcion.icono,
                color: const Color(0xFF7900FF),
                size: 32,
              ),
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
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => opcion.route));
              },
            )
        ],
      ));
}
