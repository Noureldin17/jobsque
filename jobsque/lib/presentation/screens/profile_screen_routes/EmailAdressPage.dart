import 'package:flutter/material.dart';

import 'package:jobsque/presentation/reusable_components/PrimaryButton.dart';
import 'package:jobsque/presentation/reusable_components/authentication/AuthTextField.dart';
import 'package:jobsque/presentation/reusable_components/profile/ProfileBar.dart';
import 'package:sizer/sizer.dart';

class EmailAddressPage extends StatefulWidget {
  const EmailAddressPage({super.key});
  double Height(double h) {
    return ((h / 812) * 100).h;
  }

  double Width(double w) {
    return ((w / 375) * 100).w;
  }

  @override
  State<EmailAddressPage> createState() => _EmailAddressPageState();
}

class _EmailAddressPageState extends State<EmailAddressPage> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Sizer(
        builder: (context, orientation, deviceType) => Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileBar.noIcon(BarTitle: 'Email Address'),
              Padding(
                padding: EdgeInsets.only(
                    top: widget.Height(44),
                    left: widget.Width(24),
                    bottom: widget.Height(8)),
                child: Text(
                  'Main e-mail address',
                  style: TextStyle(
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color.fromARGB(255, 17, 24, 39)),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: widget.Width(24)),
                child: AuthTextField(
                    prefixIcon: 'assets/icons/sms.svg',
                    isHidden: false,
                    controller: controller),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(
                    widget.Width(24), 0, widget.Width(24), widget.Height(20)),
                child: PrimaryButton(
                    buttonText: 'Save', OnPrimaryButtonPressed: () {}),
              )
            ],
          ),
        ),
      ),
    );
  }
}
