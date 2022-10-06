import 'package:provider/provider.dart';

import './index.dart';
import './splash_screen.dart';
import './vista_video/registrase_iniciarsesion.dart';
import 'package:flutter/material.dart';
// para las pruebas de responsive y modo oscuro
import './sharedPreferences/dartThemeProvider.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DarkThemeProvider themeChangeProvider = new DarkThemeProvider();

  @override
  void initState() {
    super.initState();
    // Obten el balor de flutter.preferences para guardarlo en nuestro custom provider
    getCurrentAppTheme();
  }

  void getCurrentAppTheme() async {
    themeChangeProvider.darkTheme =
        await themeChangeProvider.darkThemePreference.getTheme();
  }

  @override
  Widget build(BuildContext context) {
    // Si se cambia a modo oscuro el ChangeNotifierProvider avisará a todos los descendientes del widget
    return ChangeNotifierProvider(
      create: (_) {
        return themeChangeProvider;
      },
      child: Consumer<DarkThemeProvider>(
        builder: (BuildContext context, value, Widget? child) {
          return MaterialApp(
              theme: ThemeData.light(),
              darkTheme: ThemeData.dark(),
              debugShowCheckedModeBanner: false,
              themeMode: ThemeMode.light,
              title: 'Prueba',
              initialRoute: "Perfil_inicio",
              /*4F565F*/
              //initialRoute: "registrarse_iniciosesion",
              //initialRoute: "iniciarsesion",
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
              },
              home: SplashScreen());
        },
      ),
    );
    //home: MenuFrame());
  }

  static of(BuildContext context) {}
}
