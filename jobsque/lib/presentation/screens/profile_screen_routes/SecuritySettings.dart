import 'package:flutter/material.dart';
import 'package:jobsque/constants/pages.dart' as pages;

import 'package:jobsque/presentation/reusable_components/ListDivider.dart';
import 'package:jobsque/presentation/reusable_components/profile/AccountAccessListItem.dart';
import 'package:jobsque/presentation/reusable_components/profile/ProfileBar.dart';
import 'package:sizer/sizer.dart';

class SecuritySettings extends StatefulWidget {
  const SecuritySettings({super.key});
  double Height(double h) {
    return ((h / 812) * 100).h;
  }

  double Width(double w) {
    return ((w / 375) * 100).w;
  }

  @override
  State<SecuritySettings> createState() => _SecuritySettingsState();
}

class _SecuritySettingsState extends State<SecuritySettings> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Sizer(
        builder: (context, orientation, deviceType) => Scaffold(
          backgroundColor: Colors.white,
          body: Column(children: [
            ProfileBar.noIcon(
                BarTitle: 'Login and security',
                OnBackPressed: () {
                  Navigator.pop(context);
                }),
            Padding(padding: EdgeInsets.only(top: widget.Height(32))),
            ListDivider.left(divText: 'Account access'),
            Padding(padding: EdgeInsets.only(top: widget.Height(12))),
            AccountAccessListItem.withLabel(
                Route: pages.Email_Address_Page,
                ItemText: 'Email address',
                ItemLabel: 'rafifdian12@gmail.com'),
            AccountAccessListItem(
                ItemText: 'Phone number', Route: pages.Change_Password_Page),
            AccountAccessListItem(
                ItemText: 'Change password', Route: pages.Change_Password_Page),
            AccountAccessListItem.withLabel(
                ItemText: 'Two-step verification',
                ItemLabel: 'Non active',
                Route: pages.Two_Step_Verification_Page),
            AccountAccessListItem(
                ItemText: 'Face ID', Route: pages.Change_Password_Page),
          ]),
        ),
      ),
    );
  }
}
