import '../aryy_common_components/appbar/appbar_widget.dart';
import 'componentes/boton_metodo_de_pago.dart';
import 'componentes/opciones_de_pago.dart';
import '../flutter_flow/app_state.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/togleIcon.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MetodosDePago extends StatefulWidget {
  const MetodosDePago({Key? key}) : super(key: key);

  @override
  _MetodosDePagoState createState() => _MetodosDePagoState();
}

class _MetodosDePagoState extends State<MetodosDePago> {
  bool? isCheckboxChecked;

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
                  'Dr. Nombre ',
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
                      setState(() =>
                          FFAppState().toggleVar = !FFAppState().toggleVar);
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
          )),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(15, 0, 0, 20),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Métodos de pago*',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Montserrat',
                              fontSize: 25,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//---------------------------  Métodos de pago  -----------------------------------------------------------------------------------------------------------------
                    children: const [
                      BotonMetodoPago(
                          metodoPagoElegido: MetodoPago.pagoAnticipado),
                      BotonMetodoPago(
                          metodoPagoElegido: MetodoPago.pagoEnConsultorio),
                    ],
//--------------------------------------------------------------------------------------------------------------------------------------------
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(20, 10, 20, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: ListView(
                            padding: EdgeInsets.zero,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 0, 0, 10),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'Métodos de pago*',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Montserrat',
                                            fontSize: 20,
                                            fontWeight: FontWeight.w300,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
//---------------------------  Opciones de pago  ---------------------------------------------------------------------------------------------
                              const OpciondePago(
                                  icon: FontAwesomeIcons.ccVisa,
                                  title: '*** 1234'),
                              const OpciondePago(
                                  icon: FontAwesomeIcons.ccMastercard,
                                  title: '*** 5678'),
                              const OpciondePago(
                                  icon: FontAwesomeIcons.moneyBillWave,
                                  title: 'correo@aryy.com'),
                              const OpciondePago(
                                  icon: FontAwesomeIcons.creditCard,
                                  title: 'Agregar otro método de pago'),
//--------------------------------------------------------------------------------------------------------------------------------------------
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 10, 0, 20),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(0, 0, 0, 5),
                                        child: Theme(
                                          data: ThemeData(
                                            unselectedWidgetColor:
                                                Color(0xFF95A1AC),
                                          ),
                                          child: CheckboxListTile(
                                            value: isCheckboxChecked ??= true,
                                            onChanged: (newValue) async {
                                              setState(() => isCheckboxChecked =
                                                  newValue!);
                                            },
                                            title: Text(
                                              'Acepto los Términos yu Condiciones, la Política de Privacidad y uso de mis datos.',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Montserrat',
                                                    fontWeight: FontWeight.w300,
                                                  ),
                                            ),
                                            tileColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryBackground,
                                            activeColor:
                                                FlutterFlowTheme.of(context)
                                                    .primaryColor,
                                            dense: false,
                                            controlAffinity:
                                                ListTileControlAffinity.leading,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0, 0, 0, 20),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(20, 0, 20, 0),
                                        child: FFButtonWidget(
                                          onPressed: () {
                                            Navigator.pushNamed(context,
                                                'loading_confirmacion_cita');
                                          },
                                          text: 'Confirmar Cita',
                                          options: FFButtonOptions(
                                            width: 130,
                                            height: 70,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .subtitle2
                                                    .override(
                                                      fontFamily: 'Montserrat',
                                                      color: Colors.white,
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                            borderSide: const BorderSide(
                                              color: Colors.transparent,
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
