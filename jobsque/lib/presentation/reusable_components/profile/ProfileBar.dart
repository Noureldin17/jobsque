import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class ProfileBar extends StatelessWidget {
  const ProfileBar({super.key, required this.OnBackPressed})
      : hasIcon = true,
        BarTitle = 'Profile';
  const ProfileBar.noIcon(
      {super.key, required this.BarTitle, required this.OnBackPressed})
      : hasIcon = false;

  final Function OnBackPressed;
  double Height(double h) {
    return ((h / 756) * 100).h;
  }

  double Width(double w) {
    return ((w / 375) * 100).w;
  }

  final String BarTitle;

  final bool hasIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: Width(24), right: Width(24), top: Height(31)),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            IconButton(
                padding: EdgeInsets.all(0),
                splashRadius: 20,
                constraints: BoxConstraints(maxHeight: 40, maxWidth: 40),
                onPressed: () {
                  OnBackPressed();
                },
                icon: SvgPicture.asset('assets/icons/arrow-left.svg')),
            Align(
              alignment: Alignment.center,
              child: Text(
                BarTitle,
                style: TextStyle(
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Color.fromARGB(255, 17, 24, 39)),
              ),
            ),
            IconButton(
                padding: EdgeInsets.all(0),
                splashRadius: 20,
                constraints: BoxConstraints(maxHeight: 40, maxWidth: 40),
                onPressed: () {},
                icon: hasIcon
                    ? SvgPicture.asset('assets/icons/logout.svg')
                    : SvgPicture.asset(
                        'assets/icons/logout.svg',
                        color: Colors.transparent,
                      )),
          ],
        ),
      ),
    );
  }
}
