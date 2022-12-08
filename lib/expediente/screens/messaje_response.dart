import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

messageResponse(BuildContext context) {
  showDialog(
      context: context,
      builder: (_) => AlertDialog(
            title: Text("Datos guardados :3"),
          ));
}
