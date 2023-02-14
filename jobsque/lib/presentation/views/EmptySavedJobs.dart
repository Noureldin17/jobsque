import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class EmptySavedList extends StatelessWidget {
  const EmptySavedList({super.key});
  double Height(double h) {
    return ((h / 756) * 100).h;
  }

  double Width(double w) {
    return ((w / 375) * 100).w;
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      // Padding(
      //   padding: EdgeInsets.only(
      //       left: Width(26),
      //       top: Height(31),
      //       right: Width(26),
      //       bottom: Height(20)),
      //   child: Row(
      //     children: [
      //       IconButton(
      //           padding: EdgeInsets.all(0),
      //           splashRadius: 20,
      //           constraints: BoxConstraints(maxHeight: 40, maxWidth: 40),
      //           onPressed: () {},
      //           icon: SvgPicture.asset('assets/icons/arrow-left.svg')),
      //       Padding(padding: EdgeInsets.only(left: Width(115))),
      //       Text('Saved',
      //           style: TextStyle(
      //               fontSize: 20,
      //               fontWeight: FontWeight.w500,
      //               fontFamily: 'SF Pro Display',
      //               color: Color.fromARGB(255, 17, 24, 39)))
      //     ],
      //   ),
      // ),
      Padding(padding: EdgeInsets.only(top: Height(165))),
      SvgPicture.asset('assets/SavedIlustration.svg'),
      Padding(padding: EdgeInsets.only(top: Height(24))),
      Text(
        'Nothing has been saved yet',
        style: TextStyle(
            fontFamily: 'SF Pro Display',
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: Color.fromARGB(255, 17, 24, 39)),
      ),
      Padding(
        padding:
            EdgeInsets.only(left: Width(25), right: Width(25), top: Height(8)),
        child: Text(
          'Press the star icon on the job you want to save.',
          style: TextStyle(
              fontFamily: 'SF Pro Display',
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Color.fromARGB(255, 107, 114, 128)),
          textAlign: TextAlign.center,
        ),
      ),
    ]);
  }
}
