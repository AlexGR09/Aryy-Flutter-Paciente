import '../../../../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

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
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: true,
          centerTitle: true,
          toolbarHeight: 80,
          elevation: 0,
          leading: widget.leading,
          title: widget.title,
          actions: [
            widget.actions,
          ],
        ));
  }
}
