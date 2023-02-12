import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class SearchFilterItem extends StatefulWidget {
  SearchFilterItem({super.key});
  double? Height(double h) {
    return ((h / 756) * 100).h;
  }

  double? Width(double w) {
    return ((w / 375) * 100).w;
  }

  bool? isSelected = false;

  @override
  State<SearchFilterItem> createState() => _SearchFilterItemState();
}

class _SearchFilterItemState extends State<SearchFilterItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(
          widget.Width(0)!, 0, widget.Width(8)!, 0),
      child: GestureDetector(
          onTap: () {
            setState(() {
              widget.isSelected = !widget.isSelected!;
            });
          },
          child: Container(
            constraints: BoxConstraints(maxWidth: 130, minWidth: 88),
            padding: EdgeInsetsDirectional.fromSTEB(
                widget.Width(17)!, 0, widget.Width(8)!, 0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Remote',
                  style: TextStyle(
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: !widget.isSelected!
                        ? Colors.white
                        : Color.fromARGB(255, 107, 114, 128),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    'assets/icons/arrow-down.svg',
                    color: !widget.isSelected!
                        ? Colors.white
                        : Color.fromARGB(255, 107, 114, 128),
                  ),
                )
              ],
            ),
            // width: widget.Width(88),
            height: widget.Height(32),
            decoration: BoxDecoration(
                border: Border.all(
                    color: Color.fromARGB(255, 209, 213, 219), width: 1),
                borderRadius: BorderRadius.circular(100),
                color: widget.isSelected!
                    ? Colors.white
                    : Color.fromARGB(255, 9, 26, 122)),
          )),
    );
  }
}
