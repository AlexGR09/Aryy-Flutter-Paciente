import 'componentes/floating_card_widget.dart';
import '../google_maps/google_maps_widget.dart';
import '../next_page_tmp/switch_modo_oscuro.dart';
import '../resultados_busqueda/componentes/botones_filtro_busqueda_widget.dart';
import '../flutter_flow/flutter_flow_google_map.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';

class CercaDeMi extends StatefulWidget {
  const CercaDeMi({Key? key}) : super(key: key);

  @override
  _CercaDeMiState createState() => _CercaDeMiState();
}

class _CercaDeMiState extends State<CercaDeMi> {
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();
  TextEditingController? inputTextController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    inputTextController = TextEditingController();
  }

  @override
  void dispose() {
    inputTextController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        resizeToAvoidBottomInset: false,
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
          title: Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              boxShadow: [
                BoxShadow(
                  blurRadius: 10,
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  offset: Offset(0, 2),
                  spreadRadius: 0,
                )
              ],
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
              child: TextFormField(
                controller: inputTextController,
                onChanged: (_) => EasyDebounce.debounce(
                  'inputTextController',
                  Duration(milliseconds: 2000),
                  () => setState(() {}),
                ),
                autofocus: true,
                obscureText: false,
                decoration: InputDecoration(
                  hintText: 'Traumatólogo - Cerca de mí',
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  focusedBorder: const UnderlineInputBorder(
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
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  focusedErrorBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  suffixIcon: inputTextController!.text.isNotEmpty
                      ? InkWell(
                          onTap: () async {
                            inputTextController?.clear();
                            setState(() {});
                          },
                          child: const Icon(
                            Icons.clear,
                            color: Color(0xFF757575),
                            size: 22,
                          ),
                        )
                      : null,
                ),
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Montserrat',
                      color: FlutterFlowTheme.of(context).secondaryText,
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
              ),
            ),
          ),
          actions: [
//---------------------------  Alternar entre modo oscuro (solo para pruebas de responsive)  -----------------------------------------------------------------------------------------------------------------
            Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 6, 0),
                child: DarkModeIcon(context)),
//--------------------------------------------------------------------------------------------------------------------------------------------
          ],
          centerTitle: false,
          elevation: 0,
        ),
        body: SafeArea(
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
//---------------------------  Botones de filtro  -----------------------------------------------------------------------------------------------------------------
              child: Column(mainAxisSize: MainAxisSize.max, children: [
                const BotonesFiltroBusqueda(),
//---------------------------  Google Map  -----------------------------------------------------------------------------------------------------------------
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: const [
                            Expanded(child: GoogleMapsWidget()),
//                            Expanded(child: FloatingCard()),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
//--------------------------------------------------------------------------------------------------------------------------------------------
              ]),
            ),
          ),
        ));
  }
}
