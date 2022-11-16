import './index.dart';
import 'package:flutter/material.dart';
//import 'package:generic_bloc_provider/generic_bloc_provider.dart';

import 'agendar_cita/ui/screens/agendar_cita_calendario_widget.dart';
import 'agendar_cita/ui/screens/agregar_tarjeta_widget.dart';
import 'agendar_cita/ui/screens/loading_widget.dart';
import 'agendar_cita/ui/screens/nuevo_metodo_pago_widget.dart';
import 'agendar_cita/ui/screens/para_mi.dart';
import 'agendar_cita/ui/screens/para_otra_persona.dart';
import 'agendar_cita/ui/screens/reservar_cita.dart';
import 'paciente_pruebaBloc/bloc/paciente_bloc.dart';
import 'paciente_pruebaBloc/ui/screens/menu_screen.dart';
import 'paciente_pruebaBloc/ui/screens/signin_screen.dart';

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
              initialRoute: "home2_inicio",
              // Pruebas responsivas y modo oscuro
              theme: ThemeData.light(),
              darkTheme: ThemeData.dark(),
              themeMode: currentMode,
              routes: {
                "splash": (_) => SplashScreen(),
                "bienvenida": (_) => HomePageWidget(),
                "iniciarsesion": (_) => IniciarsesionWidget(),
                "Registrarse": (_) => RegistrarseWidget(),
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
                "registrarse_iniciosesion": (_) =>
                    MenuFrame(), //VISTA CON VIDEO DE FONDO

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
                // Experimentos del nuevo bloc provider
                // child: A quién se va a exponer
                // bloc: Streamer
                /*"menu_bloc": (_) => BlocProvider(
                    bloc: PacienteBloc(), child: const MenuScreen()),
                "singin_bloc": (_) => const SignInScreen(),*/
              },
              home: Home2Widget());
        });
  }
}
