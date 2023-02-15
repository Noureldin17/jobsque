import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/presentation/reusable_components/NotificationListItem.dart';
import 'package:jobsque/presentation/reusable_components/ListDivider.dart';
import 'package:jobsque/presentation/reusable_components/EmptyNotificationsView.dart';
import 'package:sizer/sizer.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

// ignore: must_be_immutable
class NotificationsPage extends StatefulWidget {
  NotificationsPage({super.key});
  double Height(double h) {
    return ((h / 812) * 100).h;
  }

  double Width(double w) {
    return ((w / 375) * 100).w;
  }

  bool isEmpty = false;

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  List<String> test = [
    'Divide',
    'einv',
    'eivn',
    'eivn',
    'eivn',
    'Divide',
    'eivn',
    'eivn',
    'eivn',
    'Divide',
    'eivn',
    'eivn',
    'eivn',
    'eivn',
    'eivn',
    'eivn',
    'eivn',
    'eivn',
    'eivn',
    'eivn',
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Sizer(
            builder: (context, orientation, deviceType) => Scaffold(
                backgroundColor: Colors.white,
                body: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: widget.Width(26),
                          top: widget.Height(31),
                          right: widget.Width(26),
                          bottom: widget.Height(20)),
                      child: Row(
                        children: [
                          IconButton(
                              padding: EdgeInsets.all(0),
                              splashRadius: 20,
                              constraints:
                                  BoxConstraints(maxHeight: 40, maxWidth: 40),
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                  'assets/icons/arrow-left.svg')),
                          Padding(
                              padding: EdgeInsets.only(left: widget.Width(85))),
                          Text('Notifications',
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'SF Pro Display',
                                  color: Color.fromARGB(255, 17, 24, 39)))
                        ],
                      ),
                    ),
                    widget.isEmpty
                        ? EmptyNotifications()
                        : Expanded(
                            child: ListView.builder(
                              // reverse: true,
                              itemCount: test.length,
                              itemBuilder: (context, index) {
                                if (test[index] == 'Divide') {
                                  return StickyHeader(
                                      header: ListDivider.left(
                                          divText: 'Yesterday'),
                                      content: NotificationListItem());
                                }
                                return NotificationListItem();
                              },
                            ),
                          ),
                  ],
                ))));
  }
}
