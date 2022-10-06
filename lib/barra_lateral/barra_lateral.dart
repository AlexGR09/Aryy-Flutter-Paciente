// Propiedades de la barra lateral
import '../index.dart';
import 'package:flutter/material.dart';

List<OpcionBarraLateral> barraLateral = <OpcionBarraLateral>[
  OpcionBarraLateral(
      Icons.person_outline_sharp, "Perfil", const BarraLateralPerfilWidget()),
  OpcionBarraLateral(
      Icons.favorite_border, "Favoritos", const BarraLateralFavoritosWidget()),
  OpcionBarraLateral(Icons.emoji_events_outlined, "Recompensas",
      const BarraLateralRecompensasWidget()),
  OpcionBarraLateral(Icons.discount_outlined, "Promociones",
      const BarraLateralPromocionesWidget()),
  OpcionBarraLateral(Icons.payment_outlined, "Métodos de pago",
      const BarraLateralMetodopagoWidget()),
  OpcionBarraLateral(Icons.share_location_outlined, "Ubicaciones",
      const BarraLateralUbicacionesWidget()),
  OpcionBarraLateral(
      Icons.headphones_outlined, "Ayuda", const BarraLateralAyudaWidget()),
  OpcionBarraLateral(
      Icons.lock_outline, "Privacidad", const BarraLateralPrivacidadWidget()),
  OpcionBarraLateral(Icons.settings_outlined, "Configuración",
      const BarraLateralConfiguracionesWidget()),
  OpcionBarraLateral(Icons.exit_to_app_outlined, "Cerrar sesión",
      const BarraLateralConfiguracionesWidget()),
];

class OpcionBarraLateral {
  IconData icono;
  String titulo;
  StatefulWidget route;
  OpcionBarraLateral(this.icono, this.titulo, this.route);
}
