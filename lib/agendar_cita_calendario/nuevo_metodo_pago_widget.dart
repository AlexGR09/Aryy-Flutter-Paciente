import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class NuevoMetodoPagoWidget extends StatefulWidget {
  const NuevoMetodoPagoWidget({Key? key}) : super(key: key);

  @override
  _NuevoMetodoPagoWidgetState createState() => _NuevoMetodoPagoWidgetState();
}

class _NuevoMetodoPagoWidgetState extends State<NuevoMetodoPagoWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () {
            Navigator.pushNamed(context, 'para_mi');
          },
          child: Icon(
            Icons.arrow_back_sharp,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 24,
          ),
        ),
        title: Text(
          'Nuevo método de pago',
          textAlign: TextAlign.start,
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Montserrat',
                color: FlutterFlowTheme.of(context).primaryText,
                fontSize: 20,
                fontWeight: FontWeight.normal,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 40, 16, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Icon(
                      Icons.credit_card,
                      color: Color(0xFF7900FF),
                      size: 24,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: SelectionArea(
                          child: Text(
                        'Métodos de pago',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Montserrat',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 16,
                            ),
                      )),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                        child: SelectionArea(
                            child: Text(
                          'Te pedimos los números de tu tarjeta, y el\ncódigo de seguridad para poder realizar\npagos, o puedes vincular otros servicios de\ncobro.',
                          textAlign: TextAlign.justify,
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.normal,
                                  ),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 30, 16, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, "agregar_tarjeta");
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Icon(
                                  Icons.credit_card_rounded,
                                  color: Color(0xFF7900FF),
                                  size: 24,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 0, 0),
                                  child: SelectionArea(
                                      child: Text(
                                    'Tarjeta de crédito o débito',
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  )),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                FaIcon(
                                  FontAwesomeIcons.ccPaypal,
                                  color: Color(0xFF7900FF),
                                  size: 24,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 0, 0),
                                  child: SelectionArea(
                                      child: Text(
                                    'Paypal',
                                    style:
                                        FlutterFlowTheme.of(context).bodyText1,
                                  )),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
