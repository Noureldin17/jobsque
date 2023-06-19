import 'package:flutter/cupertino.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class AppliedJobsRejected extends StatelessWidget {
  const AppliedJobsRejected({super.key});
  double Height(double h) {
    return ((h / 756) * 100).h;
  }

  double Width(double w) {
    return ((w / 375) * 100).w;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: Height(90)),
      child: Column(
        children: [
          SvgPicture.asset('assets/rejected-status.svg'),
          Padding(padding: EdgeInsets.only(top: Height(24))),
          Text(
            'No applications were rejected',
            style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontSize: 24,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 17, 24, 39)),
          ),
          Padding(padding: EdgeInsets.only(top: Height(12))),
          Text(
            'If there is an application that is rejected by the company it will appear here',
            style: TextStyle(
                fontFamily: 'SF Pro Display',
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color.fromARGB(255, 107, 114, 128)),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
