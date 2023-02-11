import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

class PopularSearchItem extends StatefulWidget {
  const PopularSearchItem({super.key});
  double? Height(double h) {
    return ((h / 756) * 100).h;
  }

  double? Width(double w) {
    return ((w / 375) * 100).w;
  }

  @override
  State<PopularSearchItem> createState() => _PopularSearchItemState();
}

class _PopularSearchItemState extends State<PopularSearchItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(
          widget.Width(24)!, widget.Height(21)!, widget.Width(25)!, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset('assets/icons/clock.svg'),
              Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(
                      widget.Width(8)!, 0, 0, 0)),
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
          SvgPicture.asset('assets/icons/arrow-right.svg')
        ],
      ),
    );
    ;
  }
}
