import './select_title_widget.dart';
import './select_options_widget.dart';
import 'package:flutter/material.dart';

class SelectWidget extends StatefulWidget {
  const SelectWidget(
      {super.key,
      required this.title,
      required this.hintText,
      required this.options});

  final String title;
  final String hintText;
  final List<String> options;

  @override
  State<SelectWidget> createState() => _SelectWidgetState();
}

class _SelectWidgetState extends State<SelectWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 16, top: 20),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SelectTitle(text: widget.title),
                SelectOptions(
                  hintText: widget.hintText,
                  options: widget.options,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
