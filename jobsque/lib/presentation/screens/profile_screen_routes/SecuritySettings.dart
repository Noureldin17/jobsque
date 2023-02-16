import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
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
            ProfileBar.noIcon(BarTitle: 'Login and security'),
            Padding(padding: EdgeInsets.only(top: widget.Height(32))),
            ListDivider.left(divText: 'Account access'),
            Padding(padding: EdgeInsets.only(top: widget.Height(12))),
            AccountAccessListItem(ItemText: 'Email address'),
            AccountAccessListItem(ItemText: 'Phone number'),
            AccountAccessListItem(ItemText: 'Change password'),
            AccountAccessListItem(ItemText: 'Two-step verification'),
            AccountAccessListItem(ItemText: 'Face ID'),
          ]),
        ),
      ),
    );
  }
}
