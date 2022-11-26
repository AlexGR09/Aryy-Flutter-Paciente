import '../../../styles/my_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AryyLogo extends StatefulWidget {
  const AryyLogo(
      {super.key, required this.paddingTop, required this.paddingBottom});

  final double paddingTop;
  final double paddingBottom;
  @override
  State<AryyLogo> createState() => _AryyLogoState();
}

class _AryyLogoState extends State<AryyLogo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
          top: widget.paddingTop, bottom: widget.paddingBottom),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            ARYY_LOGO_MORADO,
            width: 180,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
