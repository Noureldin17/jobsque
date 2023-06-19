import 'package:flutter/material.dart';
import 'package:jobsque/constants/pages.dart' as pages;

import 'package:jobsque/presentation/reusable_components/job_application/JobApplicationSteps.dart';
import 'package:jobsque/presentation/reusable_components/PrimaryButton.dart';
import 'package:jobsque/presentation/reusable_components/job_application/WorkTypeApplicationItem.dart';
import 'package:sizer/sizer.dart';

import '../../reusable_components/profile/ProfileBar.dart';

class JobApplicationStepTwo extends StatefulWidget {
  const JobApplicationStepTwo({super.key, required this.OnNext});
  final Function OnNext;
  @override
  State<JobApplicationStepTwo> createState() => _JobApplicationStepTwoState();
}

class _JobApplicationStepTwoState extends State<JobApplicationStepTwo> {
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
        body: Column(
          children: [
            ProfileBar.noIcon(
                BarTitle: 'Apply Job',
                OnBackPressed: () {
                  Navigator.pop(context);
                }),
            Padding(
              padding: EdgeInsets.only(left: Width(26), right: Width(26)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Padding(
                  //   padding: EdgeInsets.only(top: Height(31)),
                  //   child: Row(
                  //     children: [
                  //       IconButton(
                  //           padding: EdgeInsets.all(0),
                  //           splashRadius: 20,
                  //           constraints:
                  //               BoxConstraints(maxHeight: 40, maxWidth: 40),
                  //           onPressed: () {},
                  //           icon: SvgPicture.asset('assets/icons/arrow-left.svg')),
                  //       Padding(padding: EdgeInsets.only(left: Width(95))),
                  //       Text('Apply Job',
                  //           style: TextStyle(
                  //               fontSize: 20,
                  //               fontWeight: FontWeight.w500,
                  //               fontFamily: 'SF Pro Display',
                  //               color: Color.fromARGB(255, 17, 24, 39))),
                  //     ],
                  //   ),
                  // ),
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
                          Padding(padding: EdgeInsets.only(top: Height(5))),
                          Text(
                            'Fill in your bio data correctly',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'SF Pro Display',
                                color: Color.fromARGB(255, 107, 114, 128)),
                          ),
                          Padding(padding: EdgeInsets.only(top: Height(12))),
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
            Spacer(),
            Padding(
              padding: EdgeInsets.only(bottom: Height(20)),
              child: PrimaryButton(
                  buttonText: 'Next',
                  OnPrimaryButtonPressed: () {
                    Navigator.pushNamed(
                        context, pages.Job_Application_Step_Three);
                  }),
            ),
          ],
        ),
      ),
    ));
  }
}
