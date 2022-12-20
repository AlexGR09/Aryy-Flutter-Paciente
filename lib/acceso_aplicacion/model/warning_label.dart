import '../widgets/password_warning_widget.dart';
import 'package:flutter/material.dart';

const PasswordWarning clearWarning = PasswordWarning(
  "",
  Icons.check,
  Colors.white,
);
const PasswordWarning passwordLengthWarning = PasswordWarning(
  "Al menos 8 caractéres",
  Icons.error,
  Colors.orange,
);
const PasswordWarning passwordMatchWarning = PasswordWarning(
  "Los campos no coinciden",
  Icons.warning,
  Colors.red,
);

const PasswordWarning forgotYourPassword = PasswordWarning(
    '¿Olvidaste tu contraseña?', Icons.warning, Color(0xFF7900FF));
