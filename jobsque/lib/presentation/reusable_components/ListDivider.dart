import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ListDivider extends StatelessWidget {
  const ListDivider({super.key, required this.divText})
      : alignment = Alignment.centerLeft;

  const ListDivider.left({super.key, required this.divText})
      : alignment = Alignment.centerLeft;

  final Alignment alignment;
  final String divText;
  double Height(double h) {
    return ((h / 812) * 100).h;
  }

  double Width(double w) {
    return ((w / 375) * 100).w;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            alignment: alignment,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 244, 244, 245),
                border: Border.all(
                    color: Color.fromARGB(255, 229, 231, 235), width: 1)),
            height: Height(36),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(
                  Width(0), Height(8), Width(0), Height(8)),
              child: Padding(
                padding: alignment == Alignment.centerLeft
                    ? EdgeInsets.only(left: 26)
                    : EdgeInsets.all(0),
                child: Text(
                  divText,
                  style: TextStyle(
                      fontFamily: "SF Pro Display",
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 107, 114, 128)),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
