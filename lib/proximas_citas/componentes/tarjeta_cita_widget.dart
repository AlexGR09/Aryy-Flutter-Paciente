import './menu_items.dart';
import './detalles_consulta_widget.dart';
import './detalles_doctor_widget.dart';
import '../simulacionAPI/simulacion_proxcitas_api.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

class TarjetaCita extends StatefulWidget {
  const TarjetaCita({super.key, required this.esProximaCita});

  final bool esProximaCita;

  @override
  State<TarjetaCita> createState() => _TarjetaCitaState();
}

class _TarjetaCitaState extends State<TarjetaCita> {
  List<IconData> iconosDatosConsultorio = <IconData>[
    Icons.person_outline_sharp,
    Icons.home_work_outlined,
    Icons.calendar_today_outlined,
    Icons.access_time,
  ];

  @override
  Widget build(BuildContext context) {
    String titulo = widget.esProximaCita ? "Cancelar" : "Eliminar";
    List<MenuItems> menuItems =
        opcionesMenuTarjeta(esProximaCita: widget.esProximaCita);
    return Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(40, 10, 40, 20),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
//---------------------------  Informacion del Doctor  -----------------------------------------------------------------------------------------------------------------
            InformacionCitaDoctor(esProximaCita: widget.esProximaCita),
            Divider(
              height: 20,
              thickness: 1,
              indent: 0,
              endIndent: 10,
              color: FlutterFlowTheme.of(context).secondaryText,
            ),
//---------------------------  Datos de la cita  -----------------------------------------------------------------------------------------------------------------
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Datos de la cita',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Montserrat',
                        color: FlutterFlowTheme.of(context).primaryColor,
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                      ),
                ),
//---------------------------  OptionList  -----------------------------------------------------------------------------------------------------------------
                PopupMenuButton(itemBuilder: (context) {
                  return menuItems
                      .map((e) =>
                          PopupMenuItem<int>(value: e.id, child: Text(e.texto)))
                      .toList();
                }, onSelected: (value) async {
                  if (value == 0) {
                    return;
                  }
                  var confirmDialogResponse = await showDialog<bool>(
                        context: context,
                        builder: (alertDialogContext) {
                          return AlertDialog(
                            title: Text('$titulo cita'),
                            content: Text(
                                '¿Está seguro que desea ${titulo.toLowerCase()} cita seleccionada?'),
                            actions: [
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(alertDialogContext, false),
                                child: const Text('Aceptar'),
                              ),
                              TextButton(
                                onPressed: () =>
                                    Navigator.pop(alertDialogContext, true),
                                child: const Text('Cancelar'),
                              ),
                            ],
                          );
                        },
                      ) ??
                      false;
                  if (confirmDialogResponse) {
                    print("confirmed");
                  } else {
                    print("canceled");
                  }
                }),
              ],
            ),
//---------------------------  Informacion del consultorio  -----------------------------------------------------------------------------------------------------------------
            Row(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(mainAxisSize: MainAxisSize.max,
                        // asd
                        children: [
                          for (var i = 0;
                              i < simulacionDatosConsultorio.length;
                              i++) ...[
                            InformacionCitaConsulta(
                                titulo: simulacionDatosConsultorio[i].titulo,
                                subTitulo:
                                    simulacionDatosConsultorio[i].subTitulo,
                                icono: iconosDatosConsultorio[i]),
                          ]
                        ]),
                  )
                ]),
          ],
        ));
  }
}
