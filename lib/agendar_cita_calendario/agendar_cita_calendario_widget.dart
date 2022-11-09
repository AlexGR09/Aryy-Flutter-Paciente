import '../aryy_common_components/appbar/appbar_widget.dart';
import 'componentes/vista_calendario.dart';
import 'componentes/miniatura_doctor.dart';
import '../flutter_flow/app_state.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/togleIcon.dart';
import 'package:flutter/material.dart';

// Para pruebas y simulacion de api agendar_cita
import 'simulacionAPI/simulacion_agendar_cita.dart';

class AgendarCita extends StatefulWidget {
  const AgendarCita({Key? key}) : super(key: key);

  @override
  _AgendarCitaState createState() => _AgendarCitaState();
}

class _AgendarCitaState extends State<AgendarCita> {
  callback(action) {
    setState(() {
      action();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: GlobalKey<ScaffoldState>(),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: PreferredSize(
        preferredSize: const Size(100, 80),
        child: AryyAppBar(
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
                'Dr. Nombre Apellido',
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
          actions: Padding(
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
                    setState(() {
                      FFAppState().toggleVar = !FFAppState().toggleVar;
                    });
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
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
//---------------------------  FichaDoctor  ---------------------------------------------------------------------------------------------------
                const InformacionMiniaturaDoctorAgenda(),
//--------------------------------------------------------------------------------------------------------------------------------------------
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(50, 20, 0, 25),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Calendario',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Montserrat',
                              fontSize: 30,
                            ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//---------------------------  Horarios a elegir por el paciente  -----------------------------------------------------------------------------------------------------------------
                      children: [
                        NavigationButton(context, Icons.keyboard_arrow_left),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: CitasDelDia(
                              context, "Hoy", "21 Dic", simulationDay01),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: CitasDelDia(
                              context, "Mañana", "22 Dic", simulationDay02),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: CitasDelDia(
                              context, "Viernes", "22 Dic", simulationDay03),
                        ),
                        NavigationButton(context, Icons.keyboard_arrow_right),
                      ],
//--------------------------------------------------------------------------------------------------------------------------------------------
                    ),
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 20),
                        child: FFButtonWidget(
                          onPressed: () {
                            Navigator.pushNamed(context, 'reservar_cita');
                          },
                          text: 'Agendar ahora',
                          options: FFButtonOptions(
                            width: 130,
                            height: 70,
                            color: FlutterFlowTheme.of(context).primaryColor,
                            textStyle:
                                FlutterFlowTheme.of(context).subtitle2.override(
                                      fontFamily: 'Montserrat',
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
