import 'dart:async';
import '../../index.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:go_router/go_router.dart';
export 'package:go_router/go_router.dart';
import 'serialization_util.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, _) => HomePageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => HomePageWidget(),
          routes: [
            FFRoute(
              name: 'HomePage',
              path: 'homePage',
              builder: (context, params) => HomePageWidget(),
            ),
            FFRoute(
              name: 'Registrarse',
              path: 'registrarse',
              builder: (context, params) => RegistrarseWidget(),
            ),
            FFRoute(
              name: 'iniciarsesion',
              path: 'iniciarsesion',
              builder: (context, params) => IniciarsesionWidget(),
            ),
            FFRoute(
              name: 'olvidaste_contrasena',
              path: 'olvidasteContrasena',
              builder: (context, params) => OlvidasteContrasenaWidget(),
            ),
            FFRoute(
              name: 'configurar_pin_datosbiometricos',
              path: 'configurarPinDatosbiometricos',
              builder: (context, params) =>
                  ConfigurarPinDatosbiometricosWidget(),
            ),
            FFRoute(
              name: 'Registrarse_formulario',
              path: 'registrarseFormulario',
              builder: (context, params) => RegistrarseFormularioWidget(),
            ),
            FFRoute(
              name: 'sesion_huella_dactilar',
              path: 'sesionHuellaDactilar',
              builder: (context, params) => SesionHuellaDactilarWidget(),
            ),
            FFRoute(
              name: 'codigo_verificacion',
              path: 'codigoVerificacion',
              builder: (context, params) => CodigoVerificacionWidget(),
            ),
            FFRoute(
              name: 'Barra_lateral_perfil',
              path: 'barraLateralPerfil',
              builder: (context, params) => BarraLateralPerfilWidget(),
            ),
            FFRoute(
              name: 'Barra_lateral_favoritos',
              path: 'barraLateralFavoritos',
              builder: (context, params) => BarraLateralFavoritosWidget(),
            ),
            FFRoute(
              name: 'Barra_lateral_recompensas',
              path: 'barraLateralRecompensas',
              builder: (context, params) => BarraLateralRecompensasWidget(),
            ),
            FFRoute(
              name: 'Barra_lateral_promociones',
              path: 'barraLateralPromociones',
              builder: (context, params) => BarraLateralPromocionesWidget(),
            ),
            FFRoute(
              name: 'Barra_lateral_metodopago',
              path: 'barraLateralMetodopago',
              builder: (context, params) => BarraLateralMetodopagoWidget(),
            ),
            FFRoute(
              name: 'Barra_lateral_ubicaciones',
              path: 'barraLateralUbicaciones',
              builder: (context, params) => BarraLateralUbicacionesWidget(),
            ),
            FFRoute(
              name: 'Barra_lateral_ayuda',
              path: 'barraLateralAyuda',
              builder: (context, params) => BarraLateralAyudaWidget(),
            ),
            FFRoute(
              name: 'Barra_lateral_privacidad',
              path: 'barraLateralPrivacidad',
              builder: (context, params) => BarraLateralPrivacidadWidget(),
            ),
            FFRoute(
              name: 'Barra_lateral_configuraciones',
              path: 'barraLateralConfiguraciones',
              builder: (context, params) => BarraLateralConfiguracionesWidget(),
            ),
            FFRoute(
              name: 'nueva_ubicacion',
              path: 'nuevaUbicacion',
              builder: (context, params) => NuevaUbicacionWidget(),
            ),
            FFRoute(
              name: 'buscar_especialista',
              path: 'buscarEspecialista',
              builder: (context, params) => BuscarEspecialistaWidget(),
            ),
            FFRoute(
              name: 'Home2',
              path: 'home2',
              builder: (context, params) => Home2Widget(),
            )
          ].map((r) => r.toRoute(appStateNotifier)).toList(),
        ).toRoute(appStateNotifier),
      ],
      //urlPathStrategy: UrlPathStrategy.path,
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(params)
    ..addAll(queryParams)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.extraMap.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam(String paramName, ParamType type) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam(param, type);
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        pageBuilder: (context, state) {
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder: PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).transitionsBuilder,
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}