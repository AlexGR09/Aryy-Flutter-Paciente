import '../../flutter_flow/flutter_flow_theme.dart';
import 'package:aryy_front/main.dart';
import 'package:flutter/material.dart';

// Returns: Row dark mode switch
class DarkModeSwitch extends StatefulWidget {
  const DarkModeSwitch({super.key});

  @override
  State<DarkModeSwitch> createState() => _DarkModeSwitchState();
}

class _DarkModeSwitchState extends State<DarkModeSwitch> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [DarkModeIcon()],
    );
    ;
  }
}

// Returns: single dark mode switch button
class DarkModeIcon extends StatefulWidget {
  const DarkModeIcon({super.key});

  @override
  State<DarkModeIcon> createState() => _DarkModeIconState();
}

class _DarkModeIconState extends State<DarkModeIcon> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(MyApp.themeNotifier.value == ThemeMode.light
            ? Icons.dark_mode
            : Icons.light_mode),
        color: MyApp.themeNotifier.value == ThemeMode.light
            ? FlutterFlowTheme.of(context).secondaryText
            : FlutterFlowTheme.of(context).primaryText,
        onPressed: () {
          MyApp.themeNotifier.value =
              MyApp.themeNotifier.value == ThemeMode.light
                  ? ThemeMode.dark
                  : ThemeMode.light;
        });
  }
}
