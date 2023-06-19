// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:jobsque/presentation/reusable_components/profile/ProfileBar.dart';
import 'package:sizer/sizer.dart';
import 'package:jobsque/constants/pages.dart' as pages;

import '../../reusable_components/PrimaryButton.dart';
import '../../reusable_components/job_application/JobApplicationSteps.dart';
import '../../reusable_components/job_application/WorkTypeApplicationItem.dart';

class AppliedStepTwo extends StatefulWidget {
  const AppliedStepTwo({super.key});

  @override
  State<AppliedStepTwo> createState() => _AppliedStepTwoState();
}

class _AppliedStepTwoState extends State<AppliedStepTwo> {
  double Height(double h) {
    return ((h / 812) * 100).h;
  }

  double Width(double w) {
    return ((w / 375) * 100).w;
  }

  void OnSelectionChanges(int s) {
    setState(() {
      RadioTileGroupValue = s;
    });
  }

  int RadioTileGroupValue = 1;
  List list = [1, 2, 3, 4];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Sizer(
      builder: (context, orientation, deviceType) => Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            SingleChildScrollView(
              child: Container(
                constraints: BoxConstraints(maxHeight: 125.h),
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
                              stepNumber: 2,
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(top: Height(32))),
                          Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Type of work',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'SF Pro Display',
                                        color: Color.fromARGB(255, 17, 24, 39)),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.only(top: Height(5))),
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
                                      padding:
                                          EdgeInsets.only(top: Height(12))),
                                  // WorkTypeSelection()
                                ],
                              )
                            ],
                          ),
                          Container(
                            child: ListView.builder(
                              physics: ScrollPhysics(parent: null),
                              shrinkWrap: true,
                              itemCount: 4,
                              itemBuilder: (context, index) {
                                return WorkTypeSelection(
                                  value: list[index],
                                  GroupValue: RadioTileGroupValue,
                                  OnSelectionChange: OnSelectionChanges,
                                );
                              },
                            ),
                          ),
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
                padding: EdgeInsets.only(bottom: Height(20)),
                child: PrimaryButton(
                    buttonText: 'Next',
                    OnPrimaryButtonPressed: () {
                      Navigator.pushNamed(
                          context, pages.Applied_Step_Three_Page);
                    }),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
