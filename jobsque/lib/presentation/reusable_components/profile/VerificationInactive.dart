import 'package:flutter/cupertino.dart';

import 'package:sizer/sizer.dart';

import 'TwoStepVerificationLabels.dart';

class VerificationInactive extends StatelessWidget {
  const VerificationInactive({super.key});
  double Height(double h) {
    return ((h / 812) * 100).h;
  }

  double Width(double w) {
    return ((w / 375) * 100).w;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.only(top: Height(12))),
        TwoStepVerificationLabel(
            IconAsset: 'assets/icons/lock.svg',
            ItemText:
                'Two-step verification provides additional security by asking for a verification code every time you log in on another device.'),
        TwoStepVerificationLabel(
            IconAsset: 'assets/icons/external-drive.svg',
            ItemText:
                'Adding a phone number or using an authenticator will help keep your account safe from harm.'),
      ],
    );
  }
}
