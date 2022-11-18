import 'package:flutter/material.dart';

// Pantalla de bienvenida

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100,
        height: 100,
        color: Colors.white,
        child: Row(
          children: const [
            Text("Welcome!"),
          ],
        ));
  }
}
