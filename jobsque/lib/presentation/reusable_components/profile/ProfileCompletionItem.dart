import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:sizer/sizer.dart';

class ProfileCompletionItem extends StatelessWidget {
  const ProfileCompletionItem(
      {super.key,
      required this.OnSelected,
      required this.isCompleted,
      required this.description,
      required this.title});
  final Function OnSelected;
  final String title;
  final String description;
  final bool isCompleted;
  double Height(double h) {
    return ((h / 812) * 100).h;
  }

  double Width(double w) {
    return ((w / 375) * 100).w;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: Height(20)),
      child: InkWell(
        onTap: () {
          OnSelected();
        },
        child: Container(
          height: Height(85),
          width: Width(327),
          decoration: BoxDecoration(
              color: isCompleted
                  ? Color.fromARGB(255, 214, 228, 255)
                  : Colors.white,
              border: Border.all(
                  width: 1,
                  color: isCompleted
                      ? Color.fromARGB(255, 51, 102, 255)
                      : Color.fromARGB(255, 209, 213, 219)),
              borderRadius: BorderRadius.circular(8)),
          child: Container(
            padding: EdgeInsets.symmetric(
                horizontal: Width(16), vertical: Height(12)),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // mainAxisSize: MainAxisSize.max,
              children: [
                SvgPicture.asset(
                  'assets/job_app_steps/tick-circle.svg',
                  height: Height(23),
                  width: Width(23),
                  color: isCompleted
                      ? Color.fromARGB(255, 51, 102, 255)
                      : Color.fromARGB(255, 156, 163, 175),
                ),
                Padding(
                  padding: EdgeInsets.only(left: Width(14)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'SF Pro Display',
                            color: Color.fromARGB(255, 17, 24, 39)),
                      ),
                      Padding(padding: EdgeInsets.only(top: 4)),
                      Container(
                        constraints: BoxConstraints(maxWidth: Width(230)),
                        child: Text(
                          description,
                          maxLines: 3,
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'SF Pro Display',
                              color: Color.fromARGB(255, 107, 114, 128)),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                IconButton(
                    padding: EdgeInsets.all(0),
                    splashRadius: 20,
                    constraints: BoxConstraints(maxHeight: 20, maxWidth: 20),
                    onPressed: () {
                      OnSelected();
                    },
                    icon:
                        SvgPicture.asset('assets/icons/arrow-right-vector.svg'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
