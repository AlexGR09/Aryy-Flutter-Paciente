import '../flutter_flow/flutter_flow_checkbox_group.dart';
import '../flutter_flow/flutter_flow_radio_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ParaMiWidget extends StatefulWidget {
  const ParaMiWidget({Key? key}) : super(key: key);

  @override
  _ParaMiWidgetState createState() => _ParaMiWidgetState();
}

class _ParaMiWidgetState extends State<ParaMiWidget> {
  List<String>? checkboxGroupValues;
  String? radioButtonValue;
  String? radioButtonValue2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () async {
            context.pushNamed('reservar_cita');
          },
          child: Icon(
            Icons.arrow_back,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 25,
          ),
        ),
        title: Text(
          'Reservar cita',
          style: FlutterFlowTheme.of(context).subtitle1.override(
                fontFamily: 'Montserrat',
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
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10, 30, 10, 0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'INFORMACIÓN DE CONTACTO',
                                style: FlutterFlowTheme.of(context)
                                    .subtitle1
                                    .override(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                                child: Text(
                                  'Datos del paciente',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Montserrat',
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 20, 16, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 400,
                              height: 45,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    10, 15, 0, 0),
                                child: AutoSizeText(
                                  'Nombre',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                              child: Container(
                                width: 400,
                                height: 45,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 15, 0, 0),
                                  child: AutoSizeText(
                                    'Apellidos',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Montserrat',
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 30, 16, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Informacón de contacto',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Montserrat',
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      width: 60,
                                      height: 45,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 15, 0, 0),
                                        child: Text(
                                          '+52',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            30, 0, 0, 0),
                                        child: Container(
                                          width: 250,
                                          height: 45,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10, 15, 0, 0),
                                            child: Text(
                                              '9612563654',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                            ),
                                          ),
                                        ),
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
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 18, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          '¿Esta es tu primer visita con este \nespecialista?',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Montserrat',
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 18, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        FlutterFlowRadioButton(
                          options: ['Si', 'No'].toList(),
                          onChanged: (val) =>
                              setState(() => radioButtonValue = val),
                          optionHeight: 25,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.black,
                                  ),
                          buttonPosition: RadioButtonPosition.left,
                          direction: Axis.horizontal,
                          radioButtonColor: Color(0xFF7900FF),
                          inactiveRadioButtonColor:
                              FlutterFlowTheme.of(context).secondaryText,
                          toggleable: false,
                          horizontalAlignment: WrapAlignment.start,
                          verticalAlignment: WrapCrossAlignment.start,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 30, 16, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Text(
                                    'Métodos de pago*',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Montserrat',
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 0, 20),
                                          child: FFButtonWidget(
                                            onPressed: () {
                                              Navigator.pushNamed(
                                                  context, 'agregar_tarjeta');
                                            },
                                            text: 'Pago anticipado \$600',
                                            options: FFButtonOptions(
                                              width: 350,
                                              height: 45,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle2
                                                      .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                        color: Colors.white,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                          ),
                                        ),
                                        FFButtonWidget(
                                          onPressed: () {
                                            print('Button pressed ...');
                                          },
                                          text: 'En consultorio \$800',
                                          options: FFButtonOptions(
                                            width: 350,
                                            height: 45,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            textStyle: FlutterFlowTheme.of(
                                                    context)
                                                .subtitle2
                                                .override(
                                                  fontFamily: 'Montserrat',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                            borderSide: BorderSide(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 30, 16, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: FlutterFlowCheckboxGroup(
                                        options: [
                                          'Acepto los Términos y Condiciones, la politica\nde Privacidad y el uso de mis datos.'
                                        ],
                                        onChanged: (val) => setState(
                                            () => checkboxGroupValues = val),
                                        activeColor:
                                            FlutterFlowTheme.of(context)
                                                .primaryColor,
                                        checkColor: Colors.white,
                                        checkboxBorderColor: Color(0xFF95A1AC),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.w300,
                                            ),
                                        initialized:
                                            checkboxGroupValues != null,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    16, 30, 16, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: FFButtonWidget(
                                        onPressed: () {
                                          print('Button pressed ...');
                                        },
                                        text: 'Confirmar cita',
                                        options: FFButtonOptions(
                                          width: 300,
                                          height: 40,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .subtitle2
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
