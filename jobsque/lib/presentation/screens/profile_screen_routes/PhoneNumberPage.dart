import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:jobsque/presentation/reusable_components/job_application/CountryPickerFormField.dart';
import 'package:sizer/sizer.dart';

import '../../reusable_components/PrimaryButton.dart';
import '../../reusable_components/profile/ProfileBar.dart';

// ignore: must_be_immutable
class PhoneNumberPage extends StatefulWidget {
  PhoneNumberPage({super.key});
  bool isEnabled = false;
  double Height(double h) {
    return ((h / 812) * 100).h;
  }

  double Width(double w) {
    return ((w / 375) * 100).w;
  }

  @override
  State<PhoneNumberPage> createState() => _PhoneNumberPageState();
}

class _PhoneNumberPageState extends State<PhoneNumberPage> {
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
              ProfileBar.noIcon(BarTitle: 'Phone Number'),
              Padding(
                padding: EdgeInsets.only(
                    top: widget.Height(44),
                    left: widget.Width(24),
                    bottom: widget.Height(8)),
                child: Text(
                  'Main phone number',
                  style: TextStyle(
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color.fromARGB(255, 17, 24, 39)),
                ),
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: widget.Width(24)),
                  child: CountryPickerField(
                    controller: controller,
                  )),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: widget.Height(20), horizontal: widget.Width(24)),
                child: Row(
                  children: [
                    Container(
                      width: widget.Width(239),
                      child: Text(
                        'Use the phone number to reset your password',
                        style: TextStyle(
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color.fromARGB(255, 107, 114, 128)),
                      ),
                    ),
                    Spacer(),
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
