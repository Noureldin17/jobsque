import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/presentation/reusable_components/job_application/CountryPickerFormField.dart';
import 'package:jobsque/presentation/reusable_components/profile/ProfileBar.dart';
import 'package:sizer/sizer.dart';
import 'package:jobsque/constants/pages.dart' as pages;

import '../../reusable_components/PrimaryButton.dart';
import '../../reusable_components/authentication/AuthTextField.dart';
import '../../reusable_components/job_application/JobApplicationSteps.dart';

class AppliedStepOne extends StatefulWidget {
  AppliedStepOne({super.key});
  bool WorkTypeActive = false;
  bool UploadActive = false;

  bool WorkTypeHighlited = false;
  bool UploadHighlited = false;

  TextEditingController UsernameController = TextEditingController();
  TextEditingController EmailController = TextEditingController();
  TextEditingController PickerController = TextEditingController();
  @override
  State<AppliedStepOne> createState() => _AppliedStepOneState();
}

class _AppliedStepOneState extends State<AppliedStepOne> {
  double Height(double h) {
    return ((h / 812) * 100).h;
  }

  double Width(double w) {
    return ((w / 375) * 100).w;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Sizer(
      builder: (context, orientation, deviceType) => Scaffold(
        // resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Container(
              constraints: BoxConstraints(maxHeight: 100.h),
              child: Column(
                children: [
                  ProfileBar.noIcon(BarTitle: 'Apply Job'),
                  Padding(
                    padding: EdgeInsets.only(left: Width(26), right: Width(26)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(padding: EdgeInsets.only(top: Height(32))),
                        SvgPicture.asset(
                          'assets/icons/TwitterLogo.svg',
                          height: 48,
                          width: 48,
                        ),
                        Padding(padding: EdgeInsets.only(top: Height(12))),
                        Text(
                          'Senior UI Designer',
                          style: TextStyle(
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Color.fromARGB(255, 17, 24, 39),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: Height(4))),
                        Text(
                          'Discord • Jakarta, Indonesia ',
                          style: TextStyle(
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: Color.fromARGB(255, 55, 65, 81),
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: Height(12))),
                        Padding(
                          padding: EdgeInsets.only(top: Height(31)),
                          child: JobApplicationSteps(
                            UploadActive: widget.UploadActive,
                            UploadHighlited: widget.UploadHighlited,
                            WorkTypeActive: widget.WorkTypeActive,
                            WorkTypeHighlited: widget.WorkTypeHighlited,
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: Height(32))),
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
                                Padding(
                                    padding: EdgeInsets.only(top: Height(4))),
                                Text(
                                  'Fill in your bio data correctly',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'SF Pro Display',
                                      color:
                                          Color.fromARGB(255, 107, 114, 128)),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(top: Height(28))),
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
                        Padding(padding: EdgeInsets.only(top: Height(8))),
                        Container(
                          child: AuthTextField(
                            isHidden: false,
                            controller: widget.UsernameController,
                            prefixIcon: 'assets/icons/profile.svg',
                            hinttext: 'Username ',
                            keyboardtype: TextInputType.text,
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: Height(20))),
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
                        Padding(padding: EdgeInsets.only(top: Height(8))),
                        Container(
                          child: AuthTextField(
                            isHidden: false,
                            controller: widget.EmailController,
                            prefixIcon: 'assets/icons/sms.svg',
                            hinttext: 'Email ',
                            keyboardtype: TextInputType.emailAddress,
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(top: Height(20))),
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
                        Padding(padding: EdgeInsets.only(top: Height(8))),
                        Container(
                          child: CountryPickerField(
                            controller: widget.PickerController,
                            // hinttext: 'wvwe ',
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(bottom: Height(20)),
                    child: PrimaryButton(
                        buttonText: 'Next',
                        OnPrimaryButtonPressed: () {
                          Navigator.pushNamed(
                              context, pages.Applied_Step_Two_Page);
                        }),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    ));
  }
}
