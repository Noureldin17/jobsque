import 'package:flutter/material.dart';

import 'package:flutter_svg/svg.dart';
import 'package:jobsque/presentation/reusable_components/job_application/fileUploadForm.dart';
import 'package:jobsque/presentation/reusable_components/job_application/fileUploadItem.dart';
import 'package:sizer/sizer.dart';
import 'package:jobsque/constants/pages.dart' as pages;

import '../../reusable_components/job_application/JobApplicationSteps.dart';
import '../../reusable_components/primaryButton.dart';

// ignore: must_be_immutable
class JobApplicationStepThree extends StatefulWidget {
  JobApplicationStepThree({super.key});
  double Height(double h) {
    return ((h / 812) * 100).h;
  }

  double Width(double w) {
    return ((w / 375) * 100).w;
  }

  bool WorkTypeActive = false;
  bool UploadActive = true;

  bool WorkTypeHighlited = true;
  bool UploadHighlited = false;
  @override
  State<JobApplicationStepThree> createState() =>
      _JobApplicationStepThreeState();
}

class _JobApplicationStepThreeState extends State<JobApplicationStepThree> {
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
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      IconButton(
                          padding: EdgeInsets.all(0),
                          splashRadius: 20,
                          constraints:
                              BoxConstraints(maxHeight: 20, maxWidth: 20),
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
                              color: Color.fromARGB(255, 17, 24, 39))),
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
                    'Upload CV*',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'SF Pro Display',
                        color: Color.fromARGB(255, 17, 24, 39)),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 12)),
                FileUploadItem(),
                Padding(padding: EdgeInsets.only(top: 18)),
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
                Padding(padding: EdgeInsets.only(top: widget.Height(12))),
                FileUploadForm(),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(
                      bottom: widget.Height(20), top: widget.Height(0)),
                  child: PrimaryButton(
                      buttonText: 'Submit',
                      OnPrimaryButtonPressed: () {
                        Navigator.pushNamed(
                            context, pages.Job_Application_Submitted);
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
