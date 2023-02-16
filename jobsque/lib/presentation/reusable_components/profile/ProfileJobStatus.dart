import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

class ProfileJobStatus extends StatelessWidget {
  const ProfileJobStatus({super.key});
  double Height(double h) {
    return ((h / 756) * 100).h;
  }

  double Width(double w) {
    return ((w / 375) * 100).w;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: Height(68), maxWidth: Width(327)),
      padding: EdgeInsetsDirectional.fromSTEB(
          Width(3), Height(8), Width(3), Height(8)),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 250, 250, 250),
          borderRadius: BorderRadius.circular(8)),
      child: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: Alignment.center,
              width: Width(91),
              height: Height(52),
              child: Column(
                children: [
                  Text(
                    'Applied',
                    style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color.fromARGB(255, 107, 114, 128)),
                  ),
                  Padding(padding: EdgeInsets.only(top: Height(8))),
                  Text(
                    '46',
                    style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Color.fromARGB(255, 17, 24, 39)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: Width(0), right: Width(0)),
              child: VerticalDivider(
                endIndent: 4,
                indent: 4,
                // width: 4,
                color: Color.fromARGB(255, 209, 213, 219),
                thickness: 1,
              ),
            ),
            Container(
              width: Width(91),
              height: Height(52),
              child: Column(
                children: [
                  Text(
                    'Reviewed',
                    style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color.fromARGB(255, 107, 114, 128)),
                  ),
                  Padding(padding: EdgeInsets.only(top: Height(8))),
                  Text(
                    '23',
                    style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Color.fromARGB(255, 17, 24, 39)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: Width(0), right: Width(0)),
              child: VerticalDivider(
                endIndent: 4,
                indent: 4,
                // width: 4,
                color: Color.fromARGB(255, 209, 213, 219),
                thickness: 1,
              ),
            ),
            Container(
              width: Width(91),
              height: Height(52),
              child: Column(
                children: [
                  Text(
                    'Contacted',
                    style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color.fromARGB(255, 107, 114, 128)),
                  ),
                  Padding(padding: EdgeInsets.only(top: Height(8))),
                  Text(
                    '16',
                    style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                        color: Color.fromARGB(255, 17, 24, 39)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
