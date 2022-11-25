import '../../flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';

class SliderBienvendia extends StatefulWidget {
  const SliderBienvendia(
      {super.key,
      required this.imageAsset,
      required this.width,
      required this.height,
      required this.text});

  final String imageAsset;
  final double width;
  final double height;
  final String text;

  @override
  State<SliderBienvendia> createState() => _SliderBienvendiaState();
}

class _SliderBienvendiaState extends State<SliderBienvendia> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: const BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                widget.imageAsset.toUpperCase(),
                width: widget.width,
                height: widget.height,
                fit: BoxFit.fitWidth,
              )
            ],
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(22, 0, 22, 8),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Text(
                    widget.text,
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).title2.override(
                          fontFamily: 'Montserrat',
                          color: const Color(0xFFB380FF),
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
