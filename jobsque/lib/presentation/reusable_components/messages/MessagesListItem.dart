import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:jobsque/constants/pages.dart' as pages;
import 'package:sizer/sizer.dart';

class MessagesListItem extends StatefulWidget {
  const MessagesListItem({super.key});
  double Height(double h) {
    return ((h / 756) * 100).h;
  }

  double Width(double w) {
    return ((w / 375) * 100).w;
  }

  @override
  State<MessagesListItem> createState() => _MessagesListItemState();
}

class _MessagesListItemState extends State<MessagesListItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, pages.Chat_View_Screen);
      },
      child: Container(
        padding: EdgeInsetsDirectional.fromSTEB(widget.Width(24),
            widget.Height(22.5), widget.Width(24), widget.Height(0)),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Badge(
                  badgeContent: Text(
                    '9',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w500,
                        fontSize: 10),
                  ),
                  badgeStyle: BadgeStyle(
                      badgeColor: Color.fromARGB(255, 51, 102, 255),
                      borderSide: BorderSide(color: Colors.white)),
                  position: BadgePosition.topStart(start: 0, top: -4),
                  stackFit: StackFit.passthrough,
                  child: Image.asset(
                    'assets/DanaLogo.png',
                    fit: BoxFit.scaleDown,
                  ),
                ),
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
                          Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text(
                                '10.00',
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
