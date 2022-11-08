import 'dart:async';
import '../flutter_flow/flutter_flow_google_map.dart';
import 'package:flutter/material.dart';

// This file contains the implementation for mobile (android/ios)

class GoogleMapsWidget extends StatefulWidget {
  const GoogleMapsWidget({super.key});

  @override
  State<GoogleMapsWidget> createState() => _GoogleMapsWidgetState();
}

class _GoogleMapsWidgetState extends State<GoogleMapsWidget> {
  // Manages camera function (position, animation, zoom), similar to any TextEditingController
  final googleMapsController = Completer<GoogleMapController>();
  // Sets the starting camera position, which part of the world the map point at
  LatLng initialPosition = const LatLng(16.516, -93.23);

  @override
  Widget build(BuildContext context) {
    return FlutterFlowGoogleMap(
      controller: googleMapsController,
      onCameraIdle: (latLng) => initialPosition = latLng,
      initialLocation: initialPosition,
      markerColor: GoogleMarkerColor.violet,
      mapType: MapType.normal,
      style: GoogleMapStyle.retro,
      initialZoom: 9,
      allowInteraction: true,
      allowZoom: true,
      showZoomControls: true,
      showLocation: true,
      showCompass: false,
      showMapToolbar: false,
      showTraffic: false,
      centerMapOnMarkerTap: true,
    );
  }
}
