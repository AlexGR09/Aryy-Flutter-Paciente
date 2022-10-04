import './index.dart';
import './splash_screen.dart';
import './vista_video/registrase_iniciarsesion.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Prueba',
        initialRoute: "splash",
        //initialRoute: "registrarse_iniciosesion",
        routes: {
          "splash": (_) => SplashScreen(),
          "bienvenida": (_) => HomePageWidget(),
          "iniciarsesion": (_) => IniciarsesionWidget(),
          "Registrarse": (_) => RegistrarseWidget(),
          "registrarse_formulario": (_) => RegistrarseFormularioWidget(),
          "home2_inicio": (_) => Home2Widget(),
          "buscar_especialista": (_) => BuscarEspecialistaWidget(),
          "sesion_huella_dactilar": (_) => SesionHuellaDactilarWidget(),
          "codigo_verificacion": (_) => CodigoVerificacionWidget(),

          //OPCIONES DE BARRA LATERAL
          "barra_perfil": (_) => BarraLateralPerfilWidget(),
          "barra_ayuda": (_) => BarraLateralAyudaWidget(),
          "barra_configuraciones": (_) => BarraLateralConfiguracionesWidget(),
          "barra_favoritos": (_) => BarraLateralFavoritosWidget(),
          "barra_metodos": (_) => BarraLateralMetodopagoWidget(),
          "barra_privacidad": (_) => BarraLateralPrivacidadWidget(),
          "barra_promociones": (_) => BarraLateralPromocionesWidget(),
          "barra_recompensas": (_) => BarraLateralRecompensasWidget(),
          "barra_ubicaciones": (_) => BarraLateralUbicacionesWidget(),
          "configurar_pin_datos": (_) => ConfigurarPinDatosbiometricosWidget(),
          "nueva_ubicacion": (_) => NuevaUbicacionWidget(),
          "olvidaste_contraseña": (_) => OlvidasteContrasenaWidget(),
          "registrarse_iniciosesion": (_) =>
              MenuFrame(), //VISTA CON VIDEO DE FONDO
        },
        home: SplashScreen());
    //home: MenuFrame());
  }

  static of(BuildContext context) {}
}
