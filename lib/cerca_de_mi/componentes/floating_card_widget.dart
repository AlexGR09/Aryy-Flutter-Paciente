import 'package:flutter/material.dart';

class FloatingCard extends StatefulWidget {
  const FloatingCard({super.key});

  @override
  State<FloatingCard> createState() => _FloatingCardState();
}

class _FloatingCardState extends State<FloatingCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.centerEnd,
      children: <Widget>[
        Container(
          color: Colors.red,
        ),
        Container(
          width: 90,
          height: 90,
          color: Colors.green,
        ),
        Container(
          width: 80,
          height: 80,
          color: Colors.blue,
        ),
      ],
    );
  }
}
