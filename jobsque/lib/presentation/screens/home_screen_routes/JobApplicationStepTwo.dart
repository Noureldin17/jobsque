import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:jobsque/presentation/reusable_components/JobApplicationSteps.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class JobApplicationStepTwo extends StatefulWidget {
  JobApplicationStepTwo({super.key});

  bool WorkTypeActive = false;
  bool UploadActive = false;

  bool WorkTypeHighlited = false;
  bool UploadHighlited = false;
  @override
  State<JobApplicationStepTwo> createState() => _JobApplicationStepTwoState();
}

class _JobApplicationStepTwoState extends State<JobApplicationStepTwo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Sizer(
      builder: (context, orientation, deviceType) => Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 26, top: 31, right: 26),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset('assets/icons/arrow-left.svg'),
                  Padding(padding: EdgeInsets.only(left: 98, top: 0, right: 0)),
                  Text('Apply Job',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'SF Pro Display',
                          color: Color.fromARGB(255, 17, 24, 39)))
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 31)),
            JobApplicationSteps(
              UploadActive: widget.UploadActive,
              UploadHighlited: widget.UploadHighlited,
              WorkTypeActive: widget.WorkTypeActive,
              WorkTypeHighlited: widget.WorkTypeHighlited,
            ),
          ],
        ),
      ),
    ));
  }
}
