import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

import './AppSearchBar.dart';

class SearchAppBar extends StatefulWidget implements PreferredSizeWidget {
  const SearchAppBar({super.key});
  double? Height(double h) {
    return ((h / 812) * 100).h;
  }

  double? Width(double w) {
    return ((w / 375) * 100).w;
  }

  @override
  State<SearchAppBar> createState() => _SearchAppBarState();

  @override
  Size get preferredSize => Size(double.infinity, 100);
}

class _SearchAppBarState extends State<SearchAppBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(widget.Width(26)!,
          widget.Height(24)!, widget.Width(24)!, widget.Height(22)!),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              padding: EdgeInsets.all(0),
              splashRadius: 20,
              constraints: BoxConstraints(maxHeight: 20, maxWidth: 20),
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/arrow-left.svg')),
          // SvgPicture.asset(
          //   'assets/icons/arrow-left.svg',
          //   fit: BoxFit.scaleDown,
          //   color: Color.fromARGB(255, 41, 45, 50),
          // ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, widget.Width(15)!, 0),
          ),
          Expanded(
              child: AppSearchBar(
            hasIcon: true,
          ))
        ],
      ),
    );
  }
}
