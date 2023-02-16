import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class ProfileListItem extends StatelessWidget {
  const ProfileListItem(
      {super.key, required this.ItemText, required this.Route})
      : hasIcon = false,
        IconAsset = null;

  const ProfileListItem.hasIcon(
      {super.key,
      required this.IconAsset,
      required this.ItemText,
      required this.Route})
      : hasIcon = true;
  final String? IconAsset;
  final bool hasIcon;
  final String ItemText;
  final String Route;

  double Height(double h) {
    return ((h / 756) * 100).h;
  }

  double Width(double w) {
    return ((w / 375) * 100).w;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {
        Navigator.pushNamed(context, Route);
      }),
      child: Container(
          padding: EdgeInsetsDirectional.fromSTEB(
              Width(24), Height(14), Width(24), 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  if (hasIcon)
                    Padding(
                      padding: EdgeInsetsDirectional.only(end: Width(12)),
                      child: Container(
                        width: Width(40),
                        height: Height(40),
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
                            IconAsset!,
                            fit: BoxFit.scaleDown,
                            color: Color.fromARGB(255, 51, 102, 255),
                          ),
                        ),
                      ),
                    ),
                  Text(
                    ItemText,
                    style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color.fromARGB(255, 17, 24, 39)),
                  ),
                  Spacer(),
                  IconButton(
                      padding: EdgeInsets.all(0),
                      splashRadius: 20,
                      constraints: BoxConstraints(maxHeight: 40, maxWidth: 40),
                      onPressed: () {},
                      icon: SvgPicture.asset(
                          'assets/icons/arrow-right-vector.svg'))
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(top: Height(14)),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Divider(
                    thickness: 1,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
