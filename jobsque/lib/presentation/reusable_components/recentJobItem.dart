import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class RecentJobItem extends StatefulWidget {
  RecentJobItem({super.key});

  bool ItemSaved = false;
  String? activeSaveIconAsset =
      'assets/icons/navbar_icons/archive-minusactive.svg';
  String? saveIconAsset = 'assets/icons/navbar_icons/archive-minus.svg';

  double? Height(double h) {
    return ((h / 756) * 100).h;
  }

  double? Width(double w) {
    return ((w / 375) * 100).w;
  }

  @override
  State<RecentJobItem> createState() => _RecentJobItemState();
}

class _RecentJobItemState extends State<RecentJobItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.fromSTEB(
          widget.Width(24)!, widget.Height(22.5)!, widget.Width(24)!, 0),
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset(
                'assets/icons/TwitterLogo.svg',
                height: widget.Height(40),
                width: widget.Width(40),
              ),
              Padding(
                padding:
                    EdgeInsetsDirectional.fromSTEB(0, 0, widget.Width(16)!, 0),
              ),
              Expanded(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    Text(
                      'Senior UI Designer',
                      style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                        color: Color.fromARGB(255, 17, 24, 39),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0, widget.Height(4)!, 0, 0)),
                    Text(
                      'Twitter • Jakarta, Indonesia ',
                      style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: Color.fromARGB(255, 55, 65, 81),
                      ),
                    ),
                  ])),
              GestureDetector(
                  onTap: () {
                    setState(() {
                      widget.ItemSaved = !widget.ItemSaved;
                    });
                  },
                  child: SvgPicture.asset(
                    widget.ItemSaved
                        ? widget.activeSaveIconAsset!
                        : widget.saveIconAsset!,
                    height: widget.Height(40),
                    width: widget.Width(40),
                    fit: BoxFit.scaleDown,
                    alignment: Alignment.centerRight,
                  )),
            ],
          ),
          Padding(
            padding:
                EdgeInsetsDirectional.fromSTEB(0, widget.Height(18.5)!, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Center(
                        child: Text(
                          'Fulltime',
                          style: TextStyle(
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color.fromARGB(255, 51, 102, 255),
                          ),
                        ),
                      ),
                      width: widget.Width(73),
                      height: widget.Height(26),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color.fromARGB(255, 214, 228, 255)),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          0, 0, widget.Width(8)!, 0),
                    ),
                    Container(
                      child: Center(
                        child: Text(
                          'Remote',
                          style: TextStyle(
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color.fromARGB(255, 51, 102, 255),
                          ),
                        ),
                      ),
                      width: widget.Width(73),
                      height: widget.Height(26),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color.fromARGB(255, 214, 228, 255)),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          0, 0, widget.Width(8)!, 0),
                    ),
                    Container(
                      child: Center(
                        child: Text(
                          'Senior',
                          style: TextStyle(
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color.fromARGB(255, 51, 102, 255),
                          ),
                        ),
                      ),
                      width: widget.Width(73),
                      height: widget.Height(26),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color.fromARGB(255, 214, 228, 255)),
                    ),
                  ],
                ),
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                    text: '\$15K',
                    style: TextStyle(
                        color: Color.fromARGB(255, 46, 142, 24),
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w500,
                        fontSize: 16),
                  ),
                  TextSpan(
                    text: '/Month',
                    style: TextStyle(
                        color: Color.fromARGB(255, 107, 114, 128),
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w500,
                        fontSize: 12),
                  ),
                ]))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(
                widget.Width(24)!, widget.Height(16)!, widget.Width(24)!, 0),
            child: Divider(
              thickness: 1,
            ),
          ),
        ],
      ),
    );
  }
}
