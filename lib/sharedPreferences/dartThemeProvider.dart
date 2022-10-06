import './darkThemePreference.dart';
import 'package:flutter/cupertino.dart';

// Accede a DarkThemePreference a través de este provider (para cambiar al modo oscuro en las pruebas)
// si existe algún cambio, se notificará a través de notifyListeners de Flutter

class DarkThemeProvider with ChangeNotifier {
  DarkThemePreference darkThemePreference = DarkThemePreference();
  bool _darkTheme = false;

  bool get darkTheme => _darkTheme;

  set darkTheme(bool value) {
    _darkTheme = value;
    darkThemePreference.setDarkTheme(value);
    notifyListeners();
  }
}
