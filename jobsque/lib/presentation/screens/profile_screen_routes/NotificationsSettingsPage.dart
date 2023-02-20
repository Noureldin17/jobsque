import 'package:flutter/material.dart';

import 'package:jobsque/presentation/reusable_components/ListDivider.dart';
import 'package:jobsque/presentation/reusable_components/profile/NotificationsSettingsItem.dart';
import 'package:jobsque/presentation/reusable_components/profile/ProfileBar.dart';
import 'package:sizer/sizer.dart';

class NotificationsSettings extends StatefulWidget {
  const NotificationsSettings({super.key});
  double Height(double h) {
    return ((h / 812) * 100).h;
  }

  double Width(double w) {
    return ((w / 375) * 100).w;
  }

  @override
  State<NotificationsSettings> createState() => _NotificationsSettingsState();
}

class _NotificationsSettingsState extends State<NotificationsSettings> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Sizer(
        builder: (context, orientation, deviceType) => Scaffold(
            backgroundColor: Colors.white,
            body: Column(
              children: [
                ProfileBar.noIcon(
                    BarTitle: 'Notification',
                    OnBackPressed: () {
                      Navigator.pop(context);
                    }),
                Padding(padding: EdgeInsets.only(top: widget.Height(32))),
                ListDivider.left(divText: 'Job Notifications'),
                Padding(padding: EdgeInsets.only(top: widget.Height(12))),
                NotificationsSettingsItem(settingText: 'Your Job Search Alert'),
                NotificationsSettingsItem(
                    settingText: 'Job Application Update'),
                NotificationsSettingsItem(
                    settingText: 'Job Application Reminders'),
                NotificationsSettingsItem(
                    settingText: 'Jobs You May Be Interested In'),
                NotificationsSettingsItem(settingText: 'Job Seeker Updates'),
                ListDivider.left(divText: 'Job Notifications'),
                NotificationsSettingsItem(settingText: 'Show Profile'),
                NotificationsSettingsItem(settingText: 'All Message'),
                NotificationsSettingsItem(settingText: 'Message Nudges'),
              ],
            )),
      ),
    );
  }
}
