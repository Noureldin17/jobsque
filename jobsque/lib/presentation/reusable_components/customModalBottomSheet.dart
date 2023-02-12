import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class CustomModalSheet extends StatefulWidget {
  CustomModalSheet({super.key});
  double? Height(double h) {
    return ((h / 756) * 100).h;
  }

  double? Width(double w) {
    return ((w / 375) * 100).w;
  }

  TextEditingController jobTitleController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  @override
  State<CustomModalSheet> createState() => _CustomModalSheetState();
}

class _CustomModalSheetState extends State<CustomModalSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h - widget.Height(54)!,
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(
            widget.Width(24)!, 0, widget.Width(24)!, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:
                  EdgeInsetsDirectional.fromSTEB(0, widget.Height(40)!, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset('assets/icons/arrow-left.svg'),
                  Text(
                    "Set Filter",
                    style: TextStyle(
                        color: Color.fromARGB(255, 17, 24, 39),
                        fontFamily: 'SF Pro Display',
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  Text(
                    "Set Filter",
                    style: TextStyle(
                        color: Color.fromARGB(255, 51, 102, 255),
                        fontFamily: 'SF Pro Display',
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: widget.Height(28)!),
              child: Text(
                "Job Title",
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color.fromARGB(255, 17, 24, 39),
                    fontFamily: 'SF Pro Display',
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
