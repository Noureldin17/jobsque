import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class NotificationBanner extends StatefulWidget {
  const NotificationBanner(
      {super.key, required this.submitted, required this.accepted});
  double Height(double h) {
    return ((h / 756) * 100).h;
  }

  double Width(double w) {
    return ((w / 375) * 100).w;
  }

  final bool accepted;
  final bool submitted;
  @override
  State<NotificationBanner> createState() => _NotificationBannerState();
}

class _NotificationBannerState extends State<NotificationBanner> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: widget.Height(16)),
      child: Container(
        padding: EdgeInsets.only(top: 16, bottom: 16, left: 15, right: 0),
        height: widget.Height(93),
        width: widget.Width(327),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 214, 228, 255),
            border:
                Border.all(width: 1, color: Color.fromARGB(255, 209, 213, 219)),
            borderRadius: BorderRadius.circular(8)),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: SvgPicture.asset(
                'assets/icons/TwitterLogo.svg',
                height: widget.Height(40),
                width: widget.Width(40),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: widget.Width(12)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Twitter',
                    style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 34, 39, 65)),
                  ),
                  Padding(padding: EdgeInsets.only(top: widget.Height(4))),
                  Container(
                    width: widget.Width(165),
                    child: Text(
                      widget.accepted
                          ? 'You have been accepted for the selection interview'
                          : 'Waiting to be selected by the twitter team',
                      style: TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 55, 65, 81)),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: widget.Height(30),
              width: widget.Width(74),
              decoration: BoxDecoration(
                  color: widget.accepted
                      ? Color.fromARGB(255, 178, 237, 130)
                      : Color.fromARGB(255, 173, 200, 255),
                  border: Border.all(width: 0, color: Colors.transparent),
                  borderRadius: BorderRadius.circular(100)),
              child: Center(
                child: Text(
                  widget.submitted
                      ? 'Submited'
                      : widget.accepted
                          ? 'Accepted'
                          : '',
                  style: TextStyle(
                      fontFamily: 'SF Pro Display',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: widget.accepted
                          ? Color.fromARGB(255, 27, 114, 15)
                          : Color.fromARGB(255, 25, 57, 183)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
