import 'package:aryy_front/splash_screen.dart';
import 'package:aryy_front/vista_video/registrase_iniciarsesion.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/internationalization.dart';
import 'flutter_flow/nav/nav.dart';
import 'index.dart';

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



/*void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await FlutterFlowTheme.initialize();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;
}

class _MyAppState extends State<MyApp> {
  Locale? _locale;
  ThemeMode _themeMode = FlutterFlowTheme.themeMode;

  late AppStateNotifier _appStateNotifier;
  late GoRouter _router;

  @override
  void initState() {
    super.initState();
    _appStateNotifier = AppStateNotifier();
    _router = createRouter(_appStateNotifier);
  }

  void setLocale(String language) =>
      setState(() => _locale = createLocale(language));
  void setThemeMode(ThemeMode mode) => setState(() {
        _themeMode = mode;
        FlutterFlowTheme.saveThemeMode(mode);
      });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'aryy-version2',
      localizationsDelegates: [
        FFLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: _locale,
      supportedLocales: const [Locale('en', '')],
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: _themeMode,
      routeInformationProvider: _router.routeInformationProvider,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
    );
  }
}*/
