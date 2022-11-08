import '../flutter_flow/app_state.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/togleIcon.dart';
import '../next_page_tmp/switch_modo_oscuro.dart';
import '../resultados_busqueda_doctor/resultados_busqueda_doctor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ResultadoBusquedaDoctor extends StatefulWidget {
  const ResultadoBusquedaDoctor({
    Key? key,
    this.toggleVariableTemp,
  }) : super(key: key);

  final bool? toggleVariableTemp;

  @override
  _ResultadoBusquedaDoctorState createState() =>
      _ResultadoBusquedaDoctorState();
}

class _ResultadoBusquedaDoctorState extends State<ResultadoBusquedaDoctor> {
  double? ratingBarValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        automaticallyImplyLeading: true,
        toolbarHeight: 80,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_outlined,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 30,
          ),
          onPressed: () {
            print('IconButton pressed ...');
          },
        ),
        title: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Dr. Nombre Apellido Apellido',
              textAlign: TextAlign.start,
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Montserrat',
                    color: FlutterFlowTheme.of(context).secondaryText,
                    fontSize: 17,
                    fontWeight: FontWeight.w300,
                  ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 30,
                  borderWidth: 1,
                  buttonSize: 60,
                  icon: Icon(
                    Icons.share_sharp,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 30,
                  ),
                  onPressed: () {
                    print('Share_button pressed ...');
                  },
                ),
                ToggleIcon(
                  onPressed: () async {
                    setState(
                        () => FFAppState().toggleVar = !FFAppState().toggleVar);
                  },
                  value: FFAppState().toggleVar,
                  onIcon: const Icon(
                    Icons.favorite_sharp,
                    color: Colors.black,
                    size: 28,
                  ),
                  offIcon: Icon(
                    Icons.favorite_border,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 28,
                  ),
                ),
//---------------------------  Alternar entre modo oscuro (solo para pruebas de responsive)  -----------------------------------------------------------------------------------------------------------------
                Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 6, 0),
                    child: DarkModeIcon(context)),
//--------------------------------------------------------------------------------------------------------------------------------------------
              ],
            ),
          ),
        ],
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 20),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 35),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            width: 80,
                                            height: 80,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              border: Border.all(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                                width: 3,
                                              ),
                                            ),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(17),
                                              child: Image.network(
                                                'https://picsum.photos/seed/329/600',
                                                width: 100,
                                                height: 100,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(10, 0, 0, 0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  'Dra. Nombre Apellido Apellido',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                      ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsetsDirectional
                                                          .fromSTEB(7, 0, 0, 0),
                                                  child: Icon(
                                                    Icons.check_circle_sharp,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryColor,
                                                    size: 18,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Especialidad',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily:
                                                            'Montserrat',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                ),
                                              ],
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(0, 5, 0, 5),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  RatingBar.builder(
                                                    onRatingUpdate:
                                                        (newValue) => setState(
                                                            () =>
                                                                ratingBarValue =
                                                                    newValue),
                                                    itemBuilder:
                                                        (context, index) =>
                                                            const Icon(
                                                      Icons.star_rounded,
                                                      color: Color(0xFFFFDC64),
                                                    ),
                                                    direction: Axis.horizontal,
                                                    initialRating:
                                                        ratingBarValue ??= 3,
                                                    unratedColor:
                                                        Color(0xFFC0C0C0),
                                                    itemCount: 5,
                                                    itemSize: 18,
                                                    glowColor:
                                                        Color(0xFFFFDC64),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                            8, 0, 0, 0),
                                                    child: Text(
                                                      '123 opiniones',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Montserrat',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryColor,
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w300,
                                                              ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 45, 0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Ced. Prof. 1234567',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Montserrat',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                            15, 0, 0, 0),
                                                    child: Text(
                                                      'Ced. Esp. 1234567',
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Montserrat',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                fontSize: 12,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .normal,
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
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 15),
                                  child: FFButtonWidget(
                                    onPressed: () {
                                      print('Llamar_ahora pressed ...');
                                    },
                                    text: 'Llamar ahora',
                                    options: FFButtonOptions(
                                      width: 400,
                                      height: 50,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: Colors.white,
                                            fontWeight: FontWeight.normal,
                                          ),
                                      borderSide: const BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                  ),
                                ),
                                FFButtonWidget(
                                  onPressed: () {
                                    print('Ver_horarios pressed ...');
                                  },
                                  text: 'Ver horarios',
                                  options: FFButtonOptions(
                                    width: 400,
                                    height: 50,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .subtitle2
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                          fontWeight: FontWeight.normal,
                                        ),
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      width: 2,
                                    ),
                                    borderRadius: BorderRadius.circular(5),
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
                Expanded(
                  child: DefaultTabController(
                    length: 3,
                    initialIndex: 0,
                    child: Column(
                      children: [
                        TabBar(
                          labelColor: FlutterFlowTheme.of(context).primaryColor,
                          unselectedLabelColor:
                              FlutterFlowTheme.of(context).primaryText,
                          labelStyle:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.normal,
                                  ),
                          indicatorColor:
                              FlutterFlowTheme.of(context).primaryColor,
                          tabs: const [
                            Tab(
                              text: 'Consultorio',
                            ),
                            Tab(
                              text: 'Sobre mí',
                            ),
                            Tab(
                              text: 'Servicios',
                            ),
                          ],
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [
                              ListView(
                                padding: EdgeInsets.zero,
                                scrollDirection: Axis.vertical,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        MediaQuery.of(context).size.width *
                                            0.10,
                                        0,
                                        20,
                                        0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children:
                                          InformacionConsultorios(context),
                                    ),
                                  )
                                ],
                              ),
                              Text(
                                'Sobre mí (no hay diseño)',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 32,
                                    ),
                              ),
                              Text(
                                'Servicios (no hay diseño)',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      fontSize: 32,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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
