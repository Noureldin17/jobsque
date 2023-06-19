import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class TwoStepVerificationLabel extends StatelessWidget {
  const TwoStepVerificationLabel(
      {super.key, required this.IconAsset, required this.ItemText});

  final String IconAsset;
  final String ItemText;
  double Height(double h) {
    return ((h / 812) * 100).h;
  }

  double Width(double w) {
    return ((w / 375) * 100).w;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: Height(20), horizontal: Width(24)),
      child: Container(
        constraints: BoxConstraints(maxWidth: Width(327)),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsetsDirectional.only(end: Width(12)),
              child: Container(
                width: Width(44),
                height: Height(44),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 214, 228, 255),
                  shape: BoxShape.circle,
                  // border: Border.all(color: Color.fromARGB(255, 209, 213, 219)),
                ),
                child: IconButton(
                  onPressed: () {
                    // Navigator.pushNamed(context, pages.Notifications_Page);
                  },
                  icon: SvgPicture.asset(
                    IconAsset,
                    fit: BoxFit.scaleDown,
                    color: Color.fromARGB(255, 51, 102, 255),
                  ),
                ),
              ),
            ),
            Flexible(
              child: Text(
                ItemText,
                maxLines: 4,
                style: TextStyle(
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w400,
                    height: 1.3,
                    fontSize: 14,
                    color: Color.fromARGB(255, 107, 114, 128)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
