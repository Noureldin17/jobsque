import 'package:flutter/material.dart';
import 'package:jobsque/presentation/reusable_components/PrimaryButton.dart';
import 'package:jobsque/presentation/reusable_components/authentication/AuthTextField.dart';

import 'package:jobsque/presentation/reusable_components/profile/ProfileBar.dart';
import 'package:sizer/sizer.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({super.key});

  double Height(double h) {
    return ((h / 812) * 100).h;
  }

  double Width(double w) {
    return ((w / 375) * 100).w;
  }

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  TextEditingController controller3 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) => SafeArea(
              child: Scaffold(
                backgroundColor: Colors.white,
                body: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProfileBar.noIcon(BarTitle: 'Change Password'),
                    Padding(
                      padding: EdgeInsets.only(
                          top: widget.Height(44),
                          left: widget.Width(24),
                          right: widget.Width(24)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Enter your old password',
                            style: TextStyle(
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Color.fromARGB(255, 17, 24, 39)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: widget.Height(8),
                                bottom: widget.Height(20)),
                            child: AuthTextField(
                              keyboardtype: TextInputType.text,
                              isHidden: true,
                              controller: controller1,
                              hinttext: "Old Password",
                              suffixIcon: 'assets/icons/eye-slash.svg',
                              prefixIcon: 'assets/icons/lock.svg',
                            ),
                          ),
                          Text(
                            'Enter your new password',
                            style: TextStyle(
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Color.fromARGB(255, 17, 24, 39)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: widget.Height(8),
                                bottom: widget.Height(20)),
                            child: AuthTextField(
                              keyboardtype: TextInputType.text,
                              isHidden: true,
                              controller: controller2,
                              hinttext: "New Password",
                              suffixIcon: 'assets/icons/eye-slash.svg',
                              prefixIcon: 'assets/icons/lock.svg',
                            ),
                          ),
                          Text(
                            'Confirm your new password',
                            style: TextStyle(
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                color: Color.fromARGB(255, 17, 24, 39)),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: widget.Height(8),
                                bottom: widget.Height(20)),
                            child: AuthTextField(
                              keyboardtype: TextInputType.text,
                              isHidden: true,
                              controller: controller3,
                              hinttext: "Confirm New Password",
                              suffixIcon: 'assets/icons/eye-slash.svg',
                              prefixIcon: 'assets/icons/lock.svg',
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: widget.Width(24),
                          vertical: widget.Height(20)),
                      child: PrimaryButton(
                        buttonText: 'Save',
                        OnPrimaryButtonPressed: () {},
                      ),
                    )
                  ],
                ),
              ),
            ));
  }
}
