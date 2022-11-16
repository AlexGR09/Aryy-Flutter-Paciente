import '../backend/api_requests/api_calls.dart';
import '../barra_navegacion_inferior/barra_de_navegacion.dart';
import './tipo_respuesta_api.dart';
import './respuestaApi/respuestaApi.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';

class BuscarEspecialistaWidget extends StatefulWidget {
  const BuscarEspecialistaWidget({Key? key}) : super(key: key);

  @override
  _BuscarEspecialistaWidgetState createState() =>
      _BuscarEspecialistaWidgetState();
}

class _BuscarEspecialistaWidgetState extends State<BuscarEspecialistaWidget> {
  ApiCallResponse? apiResult;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController? busquedaInputController;
  TextEditingController? ubicacionInputController;

  @override
  void initState() {
    super.initState();
    busquedaInputController = TextEditingController();
    ubicacionInputController = TextEditingController();
  }

  @override
  void dispose() {
    busquedaInputController?.dispose();
    ubicacionInputController?.dispose();
    super.dispose();
  }

//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//------------------------------------- API -------------------------------------------------------------------------------------------------------------------------

  late RespuestaApi respuestaApi;
  // Los datos extraidos de la respuesta de la api
  List<dynamic> listaDeDatos = [];
  late String modelo = "";

  void ConsumirAPIBuscador(TextEditingController? textEditingController) async {
    var shouldSetState = false;
    apiResult = await GetBarraBusquedaCall.call(
      //search: textEditingController!.text,
      //mod: 'searchmed',
      value: "dr",
      search: "physician",
    );
    shouldSetState = true;
    // Conexión exitosa?
    if ((apiResult?.succeeded ?? true)) {
      final resultado = getJsonField(apiResult?.jsonBody, r'''$[*]''').toList();
      listaDeDatos = resultado[0];
      /*if (resultado[12] > 0) {
        modelo = resultado[16]["Modelo"][0].toString();
        // Los datos del médico vienen con un campo "drNombre" en vez de "nombre"
        switch (modelo) {
          case "Médico":
            keyName = "professional_name";
            break;
          default:
            keyName = "nombre";
            break;
        }
      }*/
    }
    if (shouldSetState) setState(() {});
    return;
//    respuestaApi = respuestaApiFromJson(getJsonField(apiResult?.jsonBody,r'''$[*]''').toString());
  }

//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//------------------------------------- Estilos -------------------------------------------------------------------------------------------------------------------------
  int _selectedIndex = 0;
  String keyName = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          leading: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              borderWidth: 1,
              buttonSize: 60,
              icon: Icon(
                Icons.close,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 30,
              ),
              onPressed: () async {
                Navigator.pushNamed(context, "home2_inicio");
              },
            ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 0,
        ),
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding:
                              const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//------------------------------------- Barras de búsqueda -------------------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      40, 10, 40, 10),
                                  child: Container(
                                    width: 100,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      boxShadow: const [
                                        BoxShadow(
                                          blurRadius: 4,
                                          color: Color(0xFFDABFFF),
                                          offset: Offset(0, 0),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(30),
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: const Color(0xFFF4EDFF),
                                        width: 1.5,
                                      ),
                                    ),
                                    child: Padding(
                                      padding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              10, 2, 10, 0),
                                      child: TextFormField(
                                        controller: busquedaInputController,
                                        onChanged: (_) => EasyDebounce.debounce(
                                          'busquedaInputController',
                                          const Duration(milliseconds: 400),
                                          () async {
                                            ConsumirAPIBuscador(
                                                busquedaInputController);
                                          },
                                        ),
                                        autofocus: true,
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          hintText:
                                              'Doctores, medicamentos, estudios y más...',
                                          hintStyle:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: Color(0xFFCCCCCC),
                                                    fontWeight: FontWeight.w300,
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
                                          errorBorder:
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
                                          focusedErrorBorder:
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
                                          prefixIcon: Icon(
                                            Icons.search_sharp,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                          ),
                                          suffixIcon: busquedaInputController!
                                                  .text.isNotEmpty
                                              ? InkWell(
                                                  onTap: () async {
                                                    busquedaInputController
                                                        ?.clear();
                                                    setState(() {});
                                                  },
                                                  child: Icon(
                                                    Icons.clear,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryText,
                                                    size: 22,
                                                  ),
                                                )
                                              : null,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Montserrat',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              fontWeight: FontWeight.w300,
                                            ),
                                        maxLines: 1,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    40, 10, 40, 10),
                                child: Container(
                                  width: 100,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    boxShadow: const [
                                      BoxShadow(
                                        blurRadius: 4,
                                        color: Color(0xFFDABFFF),
                                        offset: Offset(0, 0),
                                      )
                                    ],
                                    borderRadius: BorderRadius.circular(30),
                                    shape: BoxShape.rectangle,
                                    border: Border.all(
                                      color: const Color(0xFFF4EDFF),
                                      width: 1.5,
                                    ),
                                  ),
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            10, 2, 10, 0),
                                    child: TextFormField(
                                      controller: ubicacionInputController,
                                      onChanged: (_) => EasyDebounce.debounce(
                                        'ubicacionInputController',
                                        const Duration(milliseconds: 2000),
                                        () => setState(() {}),
                                      ),
                                      autofocus: true,
                                      obscureText: false,
                                      decoration: InputDecoration(
                                        hintText:
                                            'Filtra por zona, ciudad, código postal',
                                        hintStyle: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color: const Color(0xFFCCCCCC),
                                              fontWeight: FontWeight.w300,
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
                                          borderRadius: BorderRadius.only(
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
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(4.0),
                                            topRight: Radius.circular(4.0),
                                          ),
                                        ),
                                        prefixIcon: Icon(
                                          Icons.location_on_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryColor,
                                        ),
                                        suffixIcon: ubicacionInputController!
                                                .text.isNotEmpty
                                            ? InkWell(
                                                onTap: () async {
                                                  ubicacionInputController
                                                      ?.clear();
                                                  setState(() {});
                                                },
                                                child: Icon(
                                                  Icons.clear,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  size: 22,
                                                ),
                                              )
                                            : null,
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Montserrat',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontWeight: FontWeight.w300,
                                          ),
                                      maxLines: 1,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
//------------------------------------- Listas -------------------------------------------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                        Expanded(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              ListTile(
                                title: Text(
                                  'Sugerencias',
                                  style: FlutterFlowTheme.of(context)
                                      .title2
                                      .override(
                                        fontFamily: 'Montserrat',
                                        color: const Color(0xFF999999),
                                      ),
                                ),
                                tileColor: const Color(0xFFF5F5F5),
                                dense: false,
                                contentPadding:
                                    const EdgeInsetsDirectional.fromSTEB(
                                        30, 0, 0, 0),
                              ),
                              Expanded(
                                  child: ListView.builder(
                                shrinkWrap: true,
                                padding: const EdgeInsets.all(5),
                                scrollDirection: Axis.vertical,
                                itemCount: listaDeDatos.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return Card(
                                    child: Padding(
                                        padding: const EdgeInsetsDirectional
                                            .fromSTEB(0, 0, 0, 0),
                                        child: ListTile(
                                          selected: index == _selectedIndex,
                                          onTap: () {
                                            setState(() {
                                              _selectedIndex = index;
                                            });
                                          },
                                          leading: CircleAvatar(
                                            backgroundColor:
                                                tipoDeLista[0].colorFondo,
                                            child: Icon(
                                              tipoDeLista[0].icono,
                                              color: Colors.white,
                                            ),
                                          ),
                                          title: Text(
                                              '${listaDeDatos[index]["professional_name"].toString()}'),
                                          subtitle: Text('${modelo}'),
//                                        selected: index == _selectedIndex,
                                        )),
                                  );
                                },
                              )),
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
        //------------------------------------- BARRA DE NAVEGACION -------------------------------------------------------------------------------------------------------------------------
        bottomNavigationBar: const BarraDeNavegacion());
  }
}
