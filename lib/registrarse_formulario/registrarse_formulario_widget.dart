//import 'dart:ffi';

import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';

import '../next_page_tmp/switch_modo_oscuro.dart';

class RegistrarseFormularioWidget extends StatefulWidget {
  const RegistrarseFormularioWidget({Key? key}) : super(key: key);

  @override
  _RegistrarseFormularioWidgetState createState() =>
      _RegistrarseFormularioWidgetState();
}

class _RegistrarseFormularioWidgetState
    extends State<RegistrarseFormularioWidget> {
  String? dropDownValue1;
  String? dropDownValue2;
  TextEditingController? textController4;
  TextEditingController? apellidoMaternoController;
  TextEditingController? apellidoPaternoController;
  TextEditingController? nombreController;
  String? dropDownValue3;
  String? dropDownValue4;
  String? dropDownValue5;
  String? dropDownValue6;
  TextEditingController? textController5;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    apellidoMaternoController = TextEditingController();
    apellidoPaternoController = TextEditingController();
    nombreController = TextEditingController();
    textController4 = TextEditingController();
    textController5 = TextEditingController();
  }

  @override
  void dispose() {
    apellidoMaternoController?.dispose();
    apellidoPaternoController?.dispose();
    nombreController?.dispose();
    textController4?.dispose();
    textController5?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //final Size = MediaQuery.of(context).size;
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(22, 0, 0, 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
//---------------------------  Alternar entre modo oscuro (solo para pruebas de responsive)  -----------------------------------------------------------------------------------------------------------------
              Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 6, 0),
                  child: DarkModeIcon(context)),
//--------------------------------------------------------------------------------------------------------------------------------------------
            ],
          ),
        ),
        actions: [],
        centerTitle: true,
        toolbarHeight: 80,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(22, 30, 22, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SvgPicture.network(
                                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/aryy-version1-2ra5ai/assets/8effj5640xs0/UI_MOVIL_PERFIL_MOVIL.svg',
                                width: 20,
                                height: 20,
                                fit: BoxFit.cover,
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                child: Text(
                                  'Informacón básica',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: Color(0xFF7900FF),
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Agrega tu información básica para que podamos\nidentificarte y personalizar tu experiencia.',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        fontSize: 12,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(22, 20, 22, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Material(
                            color: Colors.transparent,
                            elevation: 2,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                width: 300,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 4,
                                      color: Color(0x199966FF),
                                      offset: Offset(0, 0),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(20),
                                  border: Border.all(
                                    color:
                                        FlutterFlowTheme.of(context).lineColor,
                                  ),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10, 0, 0, 5),
                                  child: TextFormField(
                                    controller: nombreController,
                                    autofocus: true,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      hintText: 'Nombres (s)',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodyText2
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 12,
                                            fontWeight: FontWeight.w200,
                                          ),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      errorBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                      focusedErrorBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(4.0),
                                          topRight: Radius.circular(4.0),
                                        ),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText2
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 16,
                                          fontWeight: FontWeight.w300,
                                        ),
                                    textAlign: TextAlign.start,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                            child: Material(
                              color: Colors.transparent,
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  width: 300,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    boxShadow: const [
                                      BoxShadow(
                                        blurRadius: 4,
                                        color: Color(0x199966FF),
                                        offset: Offset(0, 0),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .lineColor,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10, 0, 0, 5),
                                    child: TextFormField(
                                      controller: apellidoPaternoController,
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        hintText: 'Apellido paterno',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodyText2
                                            .override(
                                              fontFamily: 'Poppins',
                                              fontSize: 12,
                                              fontWeight: FontWeight.w200,
                                            ),
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        errorBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedErrorBorder:
                                            UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText2
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300,
                                          ),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                            child: Material(
                              color: Colors.transparent,
                              elevation: 2,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Container(
                                  width: 300,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    boxShadow: const [
                                      BoxShadow(
                                        blurRadius: 4,
                                        color: Color(0x199966FF),
                                        offset: Offset(0, 0),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .lineColor,
                                    ),
                                  ),
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            10, 0, 0, 5),
                                    child: TextFormField(
                                      controller: apellidoMaternoController,
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        hintText: 'Apellido materno',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodyText2
                                            .override(
                                              fontFamily: 'Poppins',
                                              fontSize: 12,
                                              fontWeight: FontWeight.w200,
                                            ),
                                        enabledBorder:
                                            const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedBorder:
                                            const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        errorBorder: const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        focusedErrorBorder:
                                            const UnderlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Color(0x00000000),
                                            width: 1,
                                          ),
                                          borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText2
                                          .override(
                                            fontFamily: 'Poppins',
                                            fontSize: 16,
                                            fontWeight: FontWeight.w300,
                                          ),
                                      textAlign: TextAlign.start,
                                    ),
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
                  padding: const EdgeInsetsDirectional.fromSTEB(22, 10, 22, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      5, 0, 0, 0),
                                  child: FlutterFlowDropDown(
                                    options: ['Option 1'],
                                    onChanged: (val) =>
                                        setState(() => dropDownValue1 = val),
                                    width: 100,
                                    height: 40,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyText2
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF4F565F),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300,
                                        ),
                                    hintText: 'Género',
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    elevation: 2,
                                    borderColor:
                                        FlutterFlowTheme.of(context).lineColor,
                                    borderWidth: 0,
                                    borderRadius: 20,
                                    margin:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            12, 0, 0, 0),
                                    hidesUnderline: true,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 0, 0),
                                  child: FlutterFlowDropDown(
                                    options: ['Option 1'],
                                    onChanged: (val) =>
                                        setState(() => dropDownValue2 = val),
                                    width: 180,
                                    height: 40,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFF4F565F),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300,
                                        ),
                                    hintText: 'Fecha de nacimiento',
                                    fillColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    elevation: 2,
                                    borderColor:
                                        FlutterFlowTheme.of(context).lineColor,
                                    borderWidth: 0,
                                    borderRadius: 20,
                                    margin: EdgeInsetsDirectional.fromSTEB(
                                        12, 4, 12, 4),
                                    hidesUnderline: true,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Material(
                                    color: Colors.transparent,
                                    elevation: 2,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Container(
                                      width: 300,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            10, 0, 0, 5),
                                        child: TextFormField(
                                          controller: textController4,
                                          autofocus: true,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            hintText: 'Ocupación',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodyText2
                                                    .override(
                                                      fontFamily: 'Poppins',
                                                      fontSize: 12,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                    ),
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            errorBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                            focusedErrorBorder:
                                                UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Color(0x00000000),
                                                width: 1,
                                              ),
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(4.0),
                                                topRight: Radius.circular(4.0),
                                              ),
                                            ),
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFF4F565F),
                                                fontSize: 16,
                                                fontWeight: FontWeight.normal,
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
                  padding: EdgeInsetsDirectional.fromSTEB(22, 15, 22, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FlutterFlowDropDown(
                            options: ['Option 1'],
                            onChanged: (val) =>
                                setState(() => dropDownValue3 = val),
                            width: 300,
                            height: 40,
                            textStyle:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: Color(0xFF4F565F),
                                      fontSize: 12,
                                      fontWeight: FontWeight.w300,
                                    ),
                            hintText: 'Pais',
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            elevation: 2,
                            borderColor: FlutterFlowTheme.of(context).lineColor,
                            borderWidth: 0,
                            borderRadius: 20,
                            margin:
                                EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                            hidesUnderline: true,
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                            child: FlutterFlowDropDown(
                              options: ['Option 1'],
                              onChanged: (val) =>
                                  setState(() => dropDownValue4 = val),
                              width: 300,
                              height: 40,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF4F565F),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                  ),
                              hintText: 'Estado',
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              elevation: 2,
                              borderColor:
                                  FlutterFlowTheme.of(context).lineColor,
                              borderWidth: 0,
                              borderRadius: 20,
                              margin:
                                  EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                              hidesUnderline: true,
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                            child: FlutterFlowDropDown(
                              options: ['Option 1'],
                              onChanged: (val) =>
                                  setState(() => dropDownValue5 = val),
                              width: 300,
                              height: 40,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF4F565F),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                  ),
                              hintText: 'Ciudad o municipio',
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              elevation: 2,
                              borderColor:
                                  FlutterFlowTheme.of(context).lineColor,
                              borderWidth: 0,
                              borderRadius: 20,
                              margin:
                                  EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                              hidesUnderline: true,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(22, 15, 22, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              FlutterFlowDropDown(
                                options: ['Option 1'],
                                onChanged: (val) =>
                                    setState(() => dropDownValue6 = val),
                                width: 80,
                                height: 40,
                                textStyle: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w300,
                                    ),
                                hintText: '+52',
                                fillColor: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                elevation: 2,
                                borderColor:
                                    FlutterFlowTheme.of(context).lineColor,
                                borderWidth: 0,
                                borderRadius: 20,
                                margin: EdgeInsetsDirectional.fromSTEB(
                                    12, 4, 12, 4),
                                hidesUnderline: true,
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 2,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Container(
                                    width: 210,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: const [
                                        BoxShadow(
                                          blurRadius: 4,
                                          color: Color(0x199966FF),
                                          offset: Offset(0, 0),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12, 0, 0, 5),
                                      child: TextFormField(
                                        //------- RESTRINGIR RANGO ESPECIFICO DE DATOS -----------
                                        keyboardType: TextInputType.number,
                                        validator: (value) {
                                          final intNumber =
                                              int.tryParse(value!);
                                          if (intNumber != null &&
                                              intNumber <= 10) {
                                            return null;
                                          }
                                          TextInputFormatters:
                                          <TextInputFormatter>[
                                            FilteringTextInputFormatter
                                                .digitsOnly
                                          ];
                                        },
                                        //------------------ FIN------------------------

                                        controller: textController5,
                                        autofocus: true,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          hintText: 'Telefono (10 digitos)',
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText2
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w300,
                                                  ),
                                          enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          errorBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                          focusedErrorBorder:
                                              UnderlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                const BorderRadius.only(
                                              topLeft: Radius.circular(4.0),
                                              topRight: Radius.circular(4.0),
                                            ),
                                          ),
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              fontSize: 16,
                                              fontWeight: FontWeight.w300,
                                            ),
                                        //keyboardType: TextInputType.phone,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FFButtonWidget(
                                  onPressed: () async {
                                    var confirmDialogResponse =
                                        await showDialog<bool>(
                                              context: context,
                                              builder: (alertDialogContext) {
                                                return AlertDialog(
                                                  title: Text(
                                                      '¿Desea guardar los datos ingresados?'),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              alertDialogContext,
                                                              false),
                                                      child: Text('No'),
                                                    ),
                                                    TextButton(
                                                      onPressed: () =>
                                                          Navigator.pop(
                                                              alertDialogContext,
                                                              true),
                                                      child: Text('Si'),
                                                    ),
                                                  ],
                                                );
                                              },
                                            ) ??
                                            false;

                                    //context.pushNamed('codigo_verificacion');
                                    Navigator.pushNamed(
                                        context, "codigo_verificacion");
                                  },
                                  text: 'Guardar y verificar',
                                  options: FFButtonOptions(
                                    width: 300,
                                    height: 45,
                                    color: Color(0xFF7900FF),
                                    textStyle: FlutterFlowTheme.of(context)
                                        .bodyText2
                                        .override(
                                          fontFamily: 'Montserrat',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBtnText,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                    borderSide: BorderSide(
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
