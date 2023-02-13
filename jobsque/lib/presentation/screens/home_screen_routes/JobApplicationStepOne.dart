import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:jobsque/presentation/reusable_components/JobApplicationSteps.dart';
import 'package:jobsque/presentation/reusable_components/authentication/authTextField.dart';
import 'package:jobsque/presentation/reusable_components/primaryButton.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class JobApplicationStepOne extends StatefulWidget {
  JobApplicationStepOne({super.key});

  bool WorkTypeActive = false;
  bool UploadActive = false;

  bool WorkTypeHighlited = false;
  bool UploadHighlited = false;

  TextEditingController UsernameController = TextEditingController();
  TextEditingController EmailController = TextEditingController();
  @override
  State<JobApplicationStepOne> createState() => _JobApplicationStepOneState();
}

class _JobApplicationStepOneState extends State<JobApplicationStepOne> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Sizer(
      builder: (context, orientation, deviceType) => Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(left: 26, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 0, top: 31, right: 0),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/icons/arrow-left.svg'),
                    Padding(
                        padding: EdgeInsets.only(left: 98, top: 0, right: 0)),
                    Text('Apply Job',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'SF Pro Display',
                            color: Color.fromARGB(255, 17, 24, 39)))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 31),
                child: JobApplicationSteps(
                  UploadActive: widget.UploadActive,
                  UploadHighlited: widget.UploadHighlited,
                  WorkTypeActive: widget.WorkTypeActive,
                  WorkTypeHighlited: widget.WorkTypeHighlited,
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 32)),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Biodata',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'SF Pro Display',
                            color: Color.fromARGB(255, 17, 24, 39)),
                      ),
                      Padding(padding: EdgeInsets.only(top: 4)),
                      Text(
                        'Fill in your bio data correctly',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'SF Pro Display',
                            color: Color.fromARGB(255, 107, 114, 128)),
                      ),
                      Padding(padding: EdgeInsets.only(top: 28)),
                    ],
                  )
                ],
              ),
              Text(
                'Full Name*',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'SF Pro Display',
                    color: Color.fromARGB(255, 17, 24, 39)),
              ),
              Padding(padding: EdgeInsets.only(top: 8)),
              Container(
                child: AuthTextField(
                  isHidden: false,
                  controller: widget.UsernameController,
                  prefixIcon: 'assets/icons/profile.svg',
                  hinttext: 'wvwe ',
                  keyboardtype: TextInputType.text,
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              Text(
                'Email*',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'SF Pro Display',
                    color: Color.fromARGB(255, 17, 24, 39)),
              ),
              Padding(padding: EdgeInsets.only(top: 8)),
              Container(
                child: AuthTextField(
                  isHidden: false,
                  controller: widget.EmailController,
                  prefixIcon: 'assets/icons/sms.svg',
                  hinttext: 'wvwe ',
                  keyboardtype: TextInputType.emailAddress,
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 20)),
              Text(
                'Email*',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'SF Pro Display',
                    color: Color.fromARGB(255, 17, 24, 39)),
              ),
              Padding(padding: EdgeInsets.only(top: 8)),
              Container(
                child: AuthTextField(
                  isHidden: false,
                  controller: widget.EmailController,
                  prefixIcon: 'assets/icons/sms.svg',
                  hinttext: 'wvwe ',
                  keyboardtype: TextInputType.emailAddress,
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 160)),
              PrimaryButton(buttonText: 'Next', OnPrimaryButtonPressed: () {}),
            ],
          ),
        ),
      ),
    ));
  }
}
