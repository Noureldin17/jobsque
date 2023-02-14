import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/constants/pages.dart' as pages;

import 'package:jobsque/presentation/reusable_components/job_application/JobApplicationSteps.dart';
import 'package:jobsque/presentation/reusable_components/PrimaryButton.dart';
import 'package:jobsque/presentation/reusable_components/job_application/WorkTypeApplicationItem.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class JobApplicationStepTwo extends StatefulWidget {
  JobApplicationStepTwo({super.key});

  bool WorkTypeActive = true;
  bool UploadActive = false;

  bool WorkTypeHighlited = false;
  bool UploadHighlited = false;
  @override
  State<JobApplicationStepTwo> createState() => _JobApplicationStepTwoState();
}

class _JobApplicationStepTwoState extends State<JobApplicationStepTwo> {
  List list = [1, 2, 3, 4];
  int groupValue = 388;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Sizer(
      builder: (context, orientation, deviceType) => Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.only(left: 26, right: 26),
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
                        icon: SvgPicture.asset('assets/icons/arrow-left.svg')),
                    Padding(
                        padding: EdgeInsets.only(left: 100, top: 0, right: 0)),
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
                        'Type of work',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'SF Pro Display',
                            color: Color.fromARGB(255, 17, 24, 39)),
                      ),
                      Padding(padding: EdgeInsets.only(top: 5)),
                      Text(
                        'Fill in your bio data correctly',
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'SF Pro Display',
                            color: Color.fromARGB(255, 107, 114, 128)),
                      ),
                      Padding(padding: EdgeInsets.only(top: 12)),
                      // WorkTypeSelection()
                    ],
                  )
                ],
              ),
              Expanded(
                child: ListView.builder(
                  physics: ScrollPhysics(parent: null),
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return WorkTypeSelection(
                      value: list[index],
                      GroupValue: groupValue,
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
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
      ),
    ));
  }
}
