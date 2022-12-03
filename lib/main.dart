import './index.dart';
import './acceso_aplicacion/bloc/signin_bloc.dart';
import './acceso_aplicacion/bloc/login_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.light);
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
        valueListenable: themeNotifier,
        builder: (_, ThemeMode currentMode, __) {
          return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Aryy - Prueba',
              initialRoute: "informacion_basica",
              // Pruebas responsivas y modo oscuro
              theme: ThemeData.light(),
              darkTheme: ThemeData.dark(),
              themeMode: currentMode,
              routes: {
                "splash": (_) => SplashScreen(),
                "bienvenida": (_) => const BienvenidaWidget(),
                "registrarse_iniciosesion": (_) => RegistroInicioSesion(),
                "iniciarsesion": (context) => BlocProvider(
                    create: (_) => LoginBloc(),
                    child: const IniciarsesionWidget()),
                "registrarse": (context) => BlocProvider(
                    create: (_) => SigninBloc(),
                    child: const RegistrarseWidget()),
                // pendiente
                "registrarse_formulario": (_) => RegistrarseFormularioWidget(),
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
              },
              home: InformacionBasicaWidget());
        });
  }
}
