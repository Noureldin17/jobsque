import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:jobsque/constants/pages.dart' as pages;

import '../../reusable_components/PrimaryButton.dart';
import '../../reusable_components/job_application/FileUploadForm.dart';
import '../../reusable_components/job_application/FileUploadItem.dart';
import '../../reusable_components/job_application/JobApplicationSteps.dart';
import '../../reusable_components/profile/ProfileBar.dart';

// ignore: must_be_immutable
class AppliedStepThree extends StatefulWidget {
  const AppliedStepThree({super.key});

  @override
  State<AppliedStepThree> createState() => _AppliedStepThreeState();
}

class _AppliedStepThreeState extends State<AppliedStepThree> {
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
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.white,
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Expanded(
                  // constraints: BoxConstraints(maxHeight: 125.h),
                  child: Column(
                    children: [
                      ProfileBar.noIcon(
                          BarTitle: 'Apply Job',
                          OnBackPressed: () {
                            Navigator.pop(context);
                          }),
                      Padding(
                        padding:
                            EdgeInsets.only(left: Width(26), right: Width(26)),
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
                                stepNumber: 3,
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(top: Height(32))),
                            Row(
                              // mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Upload portfolio',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'SF Pro Display',
                                          color:
                                              Color.fromARGB(255, 17, 24, 39)),
                                    ),
                                    Padding(
                                        padding:
                                            EdgeInsets.only(top: Height(4))),
                                    Text(
                                      'Fill in your bio data correctly',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'SF Pro Display',
                                          color: Color.fromARGB(
                                              255, 107, 114, 128)),
                                    ),
                                    Padding(
                                        padding:
                                            EdgeInsets.only(top: Height(28))),
                                  ],
                                )
                              ],
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Upload CV*',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'SF Pro Display',
                                    color: Color.fromARGB(255, 17, 24, 39)),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(top: Height(12))),
                            FileUploadItem(),
                            Padding(padding: EdgeInsets.only(top: Height(18))),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Other File',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'SF Pro Display',
                                    color: Color.fromARGB(255, 17, 24, 39)),
                              ),
                            ),
                            Padding(padding: EdgeInsets.only(top: Height(12))),
                            FileUploadForm(),
                            Padding(padding: EdgeInsets.only(top: Height(84))),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: Height(20), top: Height(0)),
                  child: PrimaryButton(
                      buttonText: 'Submit',
                      OnPrimaryButtonPressed: () {
                        Navigator.pushNamed(
                            context, pages.Job_Application_Submitted);
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
