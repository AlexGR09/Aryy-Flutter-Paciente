import './index.dart';
import './acceso_aplicacion/bloc/authentication_bloc.dart';
import './_aryy_common_components/model/authentication_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'editar_perfil/barra_lateral_perfil_widget.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.light);
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late AuthenticationBloc _authenticationBloc;

  @override
  void initState() {
    _authenticationBloc = AuthenticationBloc();
    _authenticationBloc.add(AppStarted());
    super.initState();
  }

  @override
  void dispose() {
    _authenticationBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthenticationBloc>(
        create: (context) => AuthenticationBloc(),
        child: ValueListenableBuilder<ThemeMode>(
            valueListenable: ValueNotifier(ThemeMode.light),
            builder: (_, ThemeMode currentMode, __) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Aryy - Prueba',
                initialRoute: "barra_perfil",
                // Pruebas responsivas y modo oscuro
                theme: ThemeData.light(),
                darkTheme: ThemeData.dark(),
                themeMode: currentMode,
                home: SplashScreen(),
                // BlocBuilder<AuthenticationBloc, Authentication>(
                //   bloc: _authenticationBloc,
                //   builder: (BuildContext context, Authentication auth) {
                //     switch (auth) {
                //       case Authentication.uninitialized:
                //         return SplashScreen();
                //       case Authentication.authenticated:
                //         return const Home2Widget();
                //       case Authentication.unauthenticated:
                //         return RegistroInicioSesion();
                //       default:
                //         return SplashScreen();
                //     }
                //   },
                // ),
                routes: {
                  "splash": (_) => SplashScreen(),
                  "bienvenida": (_) => const BienvenidaWidget(),
                  "registrarse_iniciosesion": (_) => RegistroInicioSesion(),
                  "iniciarsesion": (context) => const IniciarsesionWidget(),
                  "registrarse": (context) => BlocProvider(
                      create: (_) => AuthenticationBloc(),
                      child: const RegistrarseWidget()),
                  // pendiente
                  "registrarse_formulario": (_) =>
                      RegistrarseFormularioWidget(),
                  "home2_inicio": (_) => Home2Widget(),
                  "buscar_especialista": (_) => BuscarEspecialistaWidget(),
                  "cerda_de_mi": (_) => CercaDeMi(),
                  "resultado_busqueda": (_) => ResultadosBusqueda(),
                  "informacion_doctor": (_) => ResultadoBusquedaDoctor(),
                  "sesion_huella_dactilar": (_) => SesionHuellaDactilarWidget(),
                  "codigo_verificacion": (_) => CodigoVerificacionWidget(),
                  "restablecer_contrasena": (_) => RestablerContrasenaWidget(),
                  "verificar_identidad": (_) => VerificarIdentidadWidget(),
                  "eres_tu": (_) => EresTuWidget(),

                  //OPCIONES DE BARRA LATERAL
                  "Perfil_inicio": (_) => BarraLateralPerfil1Widget(),
                  "barra_perfil": (_) => BarraLateralPerfilWidget(),
                  "barra_ayuda": (_) => BarraLateralAyudaWidget(),
                  "barra_configuraciones": (_) =>
                      BarraLateralConfiguracionesWidget(),
                  "barra_favoritos": (_) => BarraLateralFavoritosWidget(),
                  "barra_metodos": (_) => BarraLateralMetodopagoWidget(),
                  "barra_privacidad": (_) => BarraLateralPrivacidadWidget(),
                  "barra_promociones": (_) => BarraLateralPromocionesWidget(),
                  "barra_recompensas": (_) => BarraLateralRecompensasWidget(),
                  "barra_ubicaciones": (_) => BarraLateralUbicacionesWidget(),
                  "configurar_pin_datos": (_) =>
                      ConfigurarPinDatosbiometricosWidget(),
                  "nueva_ubicacion": (_) => NuevaUbicacionWidget(),
                  //--------------------------------------------------------------------------
                  //-------------------- AGENDAR CITA ---------------------------------------
                  //-------------------------------------------------------------------------
                  "agendar_cita": (_) => AgendarCita(),
                  "reservar_cita": (_) => ReservarCitaWidget(),
                  "metodos_pago": (_) => MetodosDePago(),
                  "para_mi": (_) => ParaMiWidget(),
                  "para_otra_persona": (_) => ParaOtraPersonaWidget(),
                  "loading_confirmacion_cita": (_) => Loading(),
                  "agregar_tarjeta": (_) => AgregarTarjetaWidget(),
                  "nuevo_metodo_pago": (_) => NuevoMetodoPagoWidget(),
                  "proximas_citas": (_) => ProximasCitas(),
                  //---------------------------------------------------------------
                  //--------------------------- EXPEDIENTE-------------------------
                  //---------------------------------------------------------------
                  "informacion_basica": ((context) =>
                      const InformacionBasicaWidget()),
                  "menu_expediente": (_) => MenuExpedienteWidget(),
                  "historial_vacunacion": (_) => HistorialVacunacionWidget(),
                  "antecedentes_patologicos": (_) =>
                      AntecedentesPatologicosWidget(),
                  "antecedentes_heredofamiliares": (_) =>
                      AntecHeredofamiliaresWidget(),
                  "antecedentes_no_patologicos": (_) =>
                      AntecedentesNoPatologicosWidget()
                },
              );
            }));
    ;
  }
}
