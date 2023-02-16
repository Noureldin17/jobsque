import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/constants/pages.dart' as pages;

import 'package:jobsque/presentation/reusable_components/job_application/JobApplicationSteps.dart';
import 'package:jobsque/presentation/reusable_components/authentication/AuthTextField.dart';
import 'package:jobsque/presentation/reusable_components/job_application/CountryPickerFormField.dart';
import 'package:jobsque/presentation/reusable_components/PrimaryButton.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class JobApplicationStepOne extends StatefulWidget {
  JobApplicationStepOne({super.key});
  double Height(double h) {
    return ((h / 812) * 100).h;
  }

  double Width(double w) {
    return ((w / 375) * 100).w;
  }

  bool WorkTypeActive = false;
  bool UploadActive = false;

  bool WorkTypeHighlited = false;
  bool UploadHighlited = false;

  TextEditingController UsernameController = TextEditingController();
  TextEditingController EmailController = TextEditingController();
  TextEditingController PickerController = TextEditingController();
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
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: const EdgeInsets.only(left: 26, right: 26),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 0, top: 31, right: 0),
                  child: Row(
                    children: [
                      IconButton(
                          padding: EdgeInsets.all(0),
                          splashRadius: 20,
                          constraints:
                              BoxConstraints(maxHeight: 40, maxWidth: 40),
                          onPressed: () {},
                          icon:
                              SvgPicture.asset('assets/icons/arrow-left.svg')),
                      Padding(
                          padding:
                              EdgeInsets.only(left: 100, top: 0, right: 0)),
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
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Full Name*',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'SF Pro Display',
                        color: Color.fromARGB(255, 17, 24, 39)),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 8)),
                Container(
                  child: AuthTextField(
                    isHidden: false,
                    controller: widget.UsernameController,
                    prefixIcon: 'assets/icons/profile.svg',
                    hinttext: 'Username ',
                    keyboardtype: TextInputType.text,
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 20)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Email*',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'SF Pro Display',
                        color: Color.fromARGB(255, 17, 24, 39)),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 8)),
                Container(
                  child: AuthTextField(
                    isHidden: false,
                    controller: widget.EmailController,
                    prefixIcon: 'assets/icons/sms.svg',
                    hinttext: 'Email ',
                    keyboardtype: TextInputType.emailAddress,
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 20)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'No.Handphone*',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'SF Pro Display',
                        color: Color.fromARGB(255, 17, 24, 39)),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 8)),
                Container(
                  child: CountryPickerField(
                    controller: widget.PickerController,
                    // hinttext: 'wvwe ',
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: PrimaryButton(
                      buttonText: 'Next',
                      OnPrimaryButtonPressed: () {
                        Navigator.pushNamed(
                            context, pages.Job_Application_Step_Two);
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
