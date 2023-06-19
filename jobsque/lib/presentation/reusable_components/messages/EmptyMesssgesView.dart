import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class EmptyMessagesView extends StatelessWidget {
  const EmptyMessagesView({super.key});
  double Height(double h) {
    return ((h / 756) * 100).h;
  }

  double Width(double w) {
    return ((w / 375) * 100).w;
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(padding: EdgeInsets.only(top: Height(120))),
      SvgPicture.asset('assets/DataIlustration.svg'),
      Padding(padding: EdgeInsets.only(top: Height(24))),
      Text(
        'You have not received any messages',
        style: TextStyle(
            fontFamily: 'SF Pro Display',
            fontSize: 24,
            fontWeight: FontWeight.w500,
            color: Color.fromARGB(255, 17, 24, 39)),
        textAlign: TextAlign.center,
      ),
      Padding(
        padding:
            EdgeInsets.only(left: Width(25), right: Width(25), top: Height(8)),
        child: Text(
          'Once your application has reached the interview stage, you will get a message from the recruiter.',
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
