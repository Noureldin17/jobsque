import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jobsque/presentation/reusable_components/PrimaryButton.dart';
import 'package:jobsque/constants/pages.dart' as pages;
import 'package:jobsque/presentation/reusable_components/profile/ProfileBar.dart';
import 'package:jobsque/presentation/reusable_components/profile/VerificationActive.dart';
import 'package:jobsque/presentation/reusable_components/profile/VerificationInActive.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class TwoStepVerification extends StatefulWidget {
  TwoStepVerification({super.key});
  double Height(double h) {
    return ((h / 812) * 100).h;
  }

  double Width(double w) {
    return ((w / 375) * 100).w;
  }

  bool isEnabled = false;

  @override
  State<TwoStepVerification> createState() => _TwoStepVerificationState();
}

class _TwoStepVerificationState extends State<TwoStepVerification> {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => SafeArea(
          child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(children: [
          ProfileBar.noIcon(
              BarTitle: 'Two-Step Verification',
              OnBackPressed: () {
                Navigator.pop(context);
              }),
          Padding(
            padding: EdgeInsets.only(top: widget.Height(36)),
            child: Container(
              padding: EdgeInsets.only(
                  top: widget.Height(12),
                  bottom: widget.Height(12),
                  left: widget.Width(14),
                  right: widget.Width(20)),
              height: widget.Height(66),
              width: widget.Width(327),
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 1, color: Color.fromARGB(255, 209, 213, 219)),
                  borderRadius: BorderRadius.circular(8)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(),
                    child: Container(
                      constraints: BoxConstraints(maxWidth: widget.Width(187)),
                      child: Text(
                          'Secure your account with two-step verification',
                          maxLines: 3,
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontFamily: 'SF Pro Display',
                              color: Color.fromARGB(255, 107, 114, 128))),
                    ),
                  ),
                  // Spacer(),
                  Container(
                    child: CupertinoSwitch(
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
                  ),
                ],
              ),
            ),
          ),
          widget.isEnabled ? VerificationActive() : VerificationInactive(),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: widget.Height(20)),
            child: PrimaryButton(
              buttonText: 'Next',
              OnPrimaryButtonPressed: () {
                Navigator.pushNamed(
                    context, pages.Phone_Number_Verification_Page);
              },
              buttonDisabled: !widget.isEnabled ? widget.isEnabled : null,
            ),
          )
        ]),
      )),
    );
  }
}
