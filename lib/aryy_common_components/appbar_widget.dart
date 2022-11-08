import 'package:flutter/material.dart';
import '../flutter_flow/flutter_flow_theme.dart';

class AryyAppBar extends StatefulWidget {
  const AryyAppBar(
      {super.key, required this.actions, this.leading, this.title});

  final Widget? leading;
  final Widget? title;
  final Widget actions;

  @override
  State<AryyAppBar> createState() => _AryyAppBarState();
}

class _AryyAppBarState extends State<AryyAppBar> {
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        preferredSize: const Size(100, 80),
        child: AppBar(
          backgroundColor:
              Colors.red, // FlutterFlowTheme.of(context).secondaryBackground,
          toolbarHeight: 80,
          elevation: 0,
// thjios
          centerTitle: true,
          automaticallyImplyLeading: true,
// thjios
          leading: widget.leading,
          title: widget.title,
          actions: [
            widget.actions,
          ],
        ));
  }
}
