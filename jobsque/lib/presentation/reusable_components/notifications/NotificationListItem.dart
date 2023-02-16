import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

class NotificationListItem extends StatefulWidget {
  const NotificationListItem({super.key});
  double Height(double h) {
    return ((h / 812) * 100).h;
  }

  double Width(double w) {
    return ((w / 375) * 100).w;
  }

  @override
  State<NotificationListItem> createState() => _NotificationListItemState();
}

class _NotificationListItemState extends State<NotificationListItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsetsDirectional.fromSTEB(widget.Width(24),
            widget.Height(22.5), widget.Width(24), widget.Height(0)),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/DanaLogo.png'),
                // SvgPicture.asset(
                //   'assets/DanaLogo.svg',
                //   // height: widget.Height(40),
                //   // width: widget.Width(40),
                //   // fit: BoxFit.scaleDown,
                // ),
                Container(
                  padding: EdgeInsets.only(left: 11),
                  constraints: BoxConstraints(maxWidth: widget.Width(286)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text('Dana',
                              style: TextStyle(
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color.fromARGB(255, 17, 24, 39),
                              )),
                          Spacer(),
                          SvgPicture.asset('assets/Ellipse12.svg'),
                          Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text(
                                '10.00AM',
                                style: TextStyle(
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color.fromARGB(255, 55, 65, 81),
                                ),
                              )),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: widget.Height(8)),
                        child: Flexible(
                          child: Text(
                            'Posted new design jobs',
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color.fromARGB(255, 55, 65, 81),
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(
                  widget.Width(0), widget.Height(12), widget.Width(0), 0),
              child: Divider(
                thickness: 1,
                height: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// Padding(
//             padding: EdgeInsets.only(left: widget.Width(11)),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Row(mainAxisSize: MainAxisSize.min, children: [
//                   Padding(
//                     padding: EdgeInsets.only(right: widget.Width(100)),
//                     child: Text(
//                       'Senior UI Designer',
//                       style: TextStyle(
//                         fontFamily: 'SF Pro Display',
//                         fontWeight: FontWeight.w500,
//                         fontSize: 18,
//                         color: Color.fromARGB(255, 17, 24, 39),
//                       ),
//                     ),
//                   ),
//                   Text(
//                     '10.00AM',
//                     style: TextStyle(
//                       fontFamily: 'SF Pro Display',
//                       fontWeight: FontWeight.w500,
//                       fontSize: 12,
//                       color: Color.fromARGB(255, 55, 65, 81),
//                     ),
//                   )
//                 ]),
//                 Text(
//                   'Twitter • Jakarta, Indonesia ',
//                   style: TextStyle(
//                     fontFamily: 'SF Pro Display',
//                     fontWeight: FontWeight.w500,
//                     fontSize: 12,
//                     color: Color.fromARGB(255, 107, 114, 128),
//                   ),
//                 )
//               ],
//             ),
//           ),