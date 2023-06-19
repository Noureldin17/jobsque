import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';

class PopularSearchItem extends StatefulWidget {
  const PopularSearchItem({super.key});

  @override
  State<PopularSearchItem> createState() => _PopularSearchItemState();
}

class _PopularSearchItemState extends State<PopularSearchItem> {
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
          EdgeInsetsDirectional.fromSTEB(Width(24), Height(18), Width(25), 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset('assets/icons/search-status.svg'),
              Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(Width(8), 0, 0, 0)),
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
              icon: SvgPicture.asset('assets/icons/arrow-right.svg'))
        ],
      ),
    );
  }
}
