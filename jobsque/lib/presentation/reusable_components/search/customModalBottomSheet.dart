import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/presentation/reusable_components/search/jobTypeFilterSelection.dart';
import 'package:jobsque/presentation/reusable_components/search/modalSheetField.dart';
import 'package:jobsque/presentation/reusable_components/primaryButton.dart';
import 'package:sizer/sizer.dart';

class CustomModalSheet extends StatefulWidget {
  const CustomModalSheet({super.key});

  @override
  State<CustomModalSheet> createState() => _CustomModalSheetState();
}

class _CustomModalSheetState extends State<CustomModalSheet> {
  double? Height(double h) {
    return ((h / 756) * 100).h;
  }

  double? Width(double w) {
    return ((w / 375) * 100).w;
  }

  final TextEditingController jobTitleController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final TextEditingController salaryController = TextEditingController();
  @override
  void initState() {
    super.initState();
    jobTitleController.text = 'UI/UX Designer';
    locationController.text = 'Jakarta, Indonesia';
    salaryController.text = '\$5K - \$10K';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100.h - Height(54)!,
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(Width(24)!, 0, Width(24)!, 0),
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, Height(40)!, 0, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          padding: EdgeInsets.all(0),
                          splashRadius: 20,
                          constraints:
                              BoxConstraints(maxHeight: 20, maxWidth: 20),
                          onPressed: () {},
                          icon:
                              SvgPicture.asset('assets/icons/arrow-left.svg')),
                      Text(
                        "Set Filter",
                        style: TextStyle(
                            color: Color.fromARGB(255, 17, 24, 39),
                            fontFamily: 'SF Pro Display',
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      TextButton(
                          onPressed: () {
                            print('object');
                          },
                          child: Text(
                            "Reset",
                            style: TextStyle(
                                color: Color.fromARGB(255, 51, 102, 255),
                                fontFamily: 'SF Pro Display',
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          )),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: Height(28)!),
                  child: Text(
                    "Job Title",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Color.fromARGB(255, 17, 24, 39),
                        fontFamily: 'SF Pro Display',
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: Height(8)!),
                  child: ModalSheetField(
                    controller: jobTitleController,
                    preIcon: 'assets/icons/briefcase-small.svg',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: Height(16)!),
                  child: Text(
                    "Location",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Color.fromARGB(255, 17, 24, 39),
                        fontFamily: 'SF Pro Display',
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: Height(8)!),
                  child: ModalSheetField(
                    controller: locationController,
                    preIcon: 'assets/icons/location.svg',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: Height(16)!),
                  child: Text(
                    "Salary",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Color.fromARGB(255, 17, 24, 39),
                        fontFamily: 'SF Pro Display',
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: Height(8)!),
                  child: ModalSheetField(
                    controller: salaryController,
                    preIcon: 'assets/icons/dollar-circle.svg',
                    suffIcon: 'assets/icons/arrow-down.svg',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: Height(16)!),
                  child: Text(
                    "Job Type",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        color: Color.fromARGB(255, 17, 24, 39),
                        fontFamily: 'SF Pro Display',
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Wrap(
                  children: [
                    JobTypeFilterSelection(JobType: 'Fulltime'),
                    JobTypeFilterSelection(JobType: 'Remote'),
                    JobTypeFilterSelection(JobType: 'Contract'),
                    JobTypeFilterSelection(JobType: 'Part Time'),
                    JobTypeFilterSelection(JobType: 'Onsite'),
                    JobTypeFilterSelection(JobType: 'Internship'),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: Height(120)!),
                  child: PrimaryButton(
                      buttonText: 'Show Result', OnPrimaryButtonPressed: () {}),
                ),
              ],
            ),
          ),
        ));
  }
}
