import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class NotificationsSettingsItem extends StatefulWidget {
  NotificationsSettingsItem({super.key, required this.settingText})
      : isEnabled = true;

  final String settingText;
  double Height(double h) {
    return ((h / 812) * 100).h;
  }

  double Width(double w) {
    return ((w / 375) * 100).w;
  }

  bool isEnabled;
  @override
  State<NotificationsSettingsItem> createState() =>
      _NotificationsSettingsItemState();
}

class _NotificationsSettingsItemState extends State<NotificationsSettingsItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: widget.Width(24)),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: widget.Height(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  widget.settingText,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'SF Pro Display',
                      color: Color.fromARGB(255, 17, 24, 39)),
                ),
                CupertinoSwitch(
                    // dragStartBehavior: DragStartBehavior.start,
                    trackColor: Color.fromARGB(255, 209, 213, 219),
                    thumbColor: widget.isEnabled
                        ? Color.fromARGB(255, 214, 228, 255)
                        : Color.fromARGB(255, 244, 244, 245),
                    activeColor: Color.fromARGB(255, 51, 102, 255),
                    value: widget.isEnabled,
                    onChanged: ((value) {
                      setState(() {
                        widget.isEnabled = value;
                      });
                    })),
              ],
            ),
          ),
          Divider(
            thickness: 2,
          )
        ],
      ),
    );
  }
}
