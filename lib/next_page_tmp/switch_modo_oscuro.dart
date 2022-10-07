import 'package:aryy_front/main.dart';
import 'package:flutter/material.dart';
import '../../flutter_flow/flutter_flow_theme.dart';

Row DarModeSwitch(BuildContext context) {
  return Row(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [DarkModeIcon(context)],
  );
}

IconButton DarkModeIcon(BuildContext context) {
  return IconButton(
      icon: Icon(MyApp.themeNotifier.value == ThemeMode.light
          ? Icons.dark_mode
          : Icons.light_mode),
      color: MyApp.themeNotifier.value == ThemeMode.light
          ? FlutterFlowTheme.of(context).secondaryText
          : FlutterFlowTheme.of(context).primaryText,
      onPressed: () {
        MyApp.themeNotifier.value = MyApp.themeNotifier.value == ThemeMode.light
            ? ThemeMode.dark
            : ThemeMode.light;
      });
}
