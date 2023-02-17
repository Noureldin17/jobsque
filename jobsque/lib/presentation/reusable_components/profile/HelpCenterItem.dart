import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class HelpCenterItem extends StatefulWidget {
  HelpCenterItem({super.key});
  @override
  State<HelpCenterItem> createState() => _HelpCenterItemState();
}

class _HelpCenterItemState extends State<HelpCenterItem> {
  bool isExpanded = false;
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
          EdgeInsets.symmetric(horizontal: Width(24), vertical: Height(10)),
      child: InkWell(
        onTap: () {
          setState(() {
            isExpanded = !isExpanded;
          });
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Color.fromARGB(255, 209, 213, 219))),
          child: Padding(
            padding: EdgeInsets.only(left: Width(10), right: Width(5)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Lorem ipsum dolor sit amet',
                      style: TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color.fromARGB(255, 17, 24, 39)),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          isExpanded = !isExpanded;
                        });
                      },
                      padding: EdgeInsets.all(0),
                      icon: SvgPicture.asset(
                        'assets/icons/arrow-down.svg',
                        color: Color.fromARGB(255, 17, 24, 39),
                      ),
                    )
                  ],
                ),
                if (isExpanded)
                  Padding(
                    padding: EdgeInsets.only(bottom: Height(10)),
                    child: Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ultricies mi enim, quis vulputate nibh faucibus at. Maecenas est ante, suscipit vel sem non, blandit blandit erat. Praesent pulvinar ante et felis porta vulputate. Curabitur ornare velit nec fringilla finibus. Phasellus mollis pharetra ante, in ullamcorper massa ullamcorper et. Curabitur ac leo sit amet leo interdum mattis vel eu mauris.',
                        maxLines: 10,
                        style: TextStyle(
                            height: 1.3,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'SF Pro Display',
                            color: Color.fromARGB(255, 107, 114, 128))),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
