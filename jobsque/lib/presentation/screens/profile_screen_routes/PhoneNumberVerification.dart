import 'package:flutter/material.dart';

import 'package:jobsque/presentation/reusable_components/job_application/CountryPickerFormField.dart';
import 'package:jobsque/presentation/reusable_components/profile/ProfileBar.dart';
import 'package:sizer/sizer.dart';
import 'package:jobsque/constants/pages.dart' as pages;

import '../../reusable_components/PrimaryButton.dart';
import '../../reusable_components/authentication/AuthTextField.dart';

class PhoneNumberVerification extends StatefulWidget {
  const PhoneNumberVerification({super.key});

  @override
  State<PhoneNumberVerification> createState() =>
      _PhoneNumberVerificationState();
}

class _PhoneNumberVerificationState extends State<PhoneNumberVerification> {
  double Height(double h) {
    return ((h / 812) * 100).h;
  }

  double Width(double w) {
    return ((w / 375) * 100).w;
  }

  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => SafeArea(
          child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ProfileBar.noIcon(BarTitle: 'Two-Step Verification'),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: Width(24), vertical: Height(36)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Add phone number',
                    style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color.fromARGB(255, 17, 24, 39)),
                  ),
                  Padding(padding: EdgeInsets.only(top: Height(4))),
                  Text('We will send a verification code to this number',
                      maxLines: 3,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'SF Pro Display',
                          color: Color.fromARGB(255, 107, 114, 128))),
                  Padding(padding: EdgeInsets.only(top: Height(16))),
                  CountryPickerField(),
                  Padding(padding: EdgeInsets.only(top: Height(20))),
                  Text(
                    'Enter your password',
                    style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color.fromARGB(255, 17, 24, 39)),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(top: Height(8), bottom: Height(20)),
                    child: AuthTextField(
                      keyboardtype: TextInputType.text,
                      isHidden: true,
                      controller: controller,
                      hinttext: "Password",
                      suffixIcon: 'assets/icons/eye-slash.svg',
                      prefixIcon: 'assets/icons/lock.svg',
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(bottom: Height(20), left: Width(24)),
              child: PrimaryButton(
                buttonText: 'Send Code',
                OnPrimaryButtonPressed: () {
                  Navigator.pushNamed(context, pages.SixDigit_Code_Page);
                },
              ),
            )
          ],
        ),
      )),
    );
  }
}
