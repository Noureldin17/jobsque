import 'dart:async';

import 'package:flutter/material.dart';
import 'package:jobsque/presentation/reusable_components/profile/ProfileBar.dart';
import 'package:pinput/pinput.dart';
import 'package:sizer/sizer.dart';

import '../../reusable_components/PrimaryButton.dart';

class SixDigitCode extends StatefulWidget {
  const SixDigitCode({super.key});

  @override
  State<SixDigitCode> createState() => _SixDigitCodeState();
}

class _SixDigitCodeState extends State<SixDigitCode> {
  double Height(double h) {
    return ((h / 812) * 100).h;
  }

  double Width(double w) {
    return ((w / 375) * 100).w;
  }

  TextEditingController controller = TextEditingController();
  int time = 60;
  @override
  void initState() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (time >= 1) {
        setState(() {
          time--;
        });
      }
    });
    super.initState();
  }

  final defaultPintheme = PinTheme(
      height: 44,
      width: 44,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border:
              Border.all(color: Color.fromARGB(255, 209, 213, 219), width: 1),
          color: Colors.white));

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => SafeArea(
          child: Scaffold(
              backgroundColor: Colors.white,
              body: Column(
                children: [
                  ProfileBar.noIcon(BarTitle: 'Two-Step Verification'),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: Width(24), vertical: Height(36)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Enter the 6 digit code',
                          style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Color.fromARGB(255, 17, 24, 39)),
                        ),
                        Padding(padding: EdgeInsets.only(top: Height(12))),
                        Text(
                            'Please confirm your account by entering the authorization code sent to ****-****-7234',
                            maxLines: 3,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'SF Pro Display',
                                color: Color.fromARGB(255, 107, 114, 128))),

                        // Padding(padding: EdgeInsets.only(top: Height(20))),
                      ],
                    ),
                  ),
                  Pinput(
                    followingPinTheme: defaultPintheme,
                    disabledPinTheme: defaultPintheme,
                    defaultPinTheme: defaultPintheme,
                    controller: controller,
                    length: 6,
                    separator: Text('   '),
                  ),
                  Padding(padding: EdgeInsets.only(top: Height(16))),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: Width(24)),
                    alignment: Alignment.centerLeft,
                    child: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: 'Resend code ',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'SF Pro Display',
                              color: Color.fromARGB(255, 107, 114, 128))),
                      TextSpan(
                          text: '${time}s',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'SF Pro Display',
                              color: Color.fromARGB(255, 51, 102, 255))),
                    ])),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: Height(20), left: Width(24), right: Width(24)),
                    child: PrimaryButton(
                      buttonText: 'Verify',
                      OnPrimaryButtonPressed: () {
                        // Navigator.pushNamed(context, pages.SixDigit_Code_Page);
                      },
                    ),
                  )
                ],
              ))),
    );
  }
}
