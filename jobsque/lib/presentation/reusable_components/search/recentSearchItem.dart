import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class RecentSearchItem extends StatefulWidget {
  const RecentSearchItem({super.key});
  double Height(double h) {
    return ((h / 812) * 100).h;
  }

  double Width(double w) {
    return ((w / 375) * 100).w;
  }

  @override
  State<RecentSearchItem> createState() => _RecentSearchItemState();
}

class _RecentSearchItemState extends State<RecentSearchItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(
          widget.Width(24), widget.Height(18), widget.Width(25), 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset('assets/icons/clock.svg'),
              Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(widget.Width(8), 0, 0, 0)),
              Text(
                'Junior UI Designer',
                style: TextStyle(
                    fontFamily: 'SF Pro Display',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 17, 24, 39)),
              )
            ],
          ),
          IconButton(
              splashRadius: 20,
              constraints: BoxConstraints(maxHeight: 20, maxWidth: 20),
              padding: EdgeInsets.all(0),
              onPressed: () {},
              icon: SvgPicture.asset('assets/icons/close-circle.svg'))
        ],
      ),
    );
  }
}
