import 'package:flutter/material.dart';

import 'package:jobsque/presentation/reusable_components/PrimaryButton.dart';
import 'package:jobsque/presentation/reusable_components/profile/DatePickerField.dart';
import 'package:jobsque/presentation/reusable_components/profile/EducationExperienceItem.dart';
import 'package:jobsque/presentation/reusable_components/profile/ProfileBar.dart';
import 'package:sizer/sizer.dart';

import '../../reusable_components/profile/ProfileTextField.dart';

class EducationFormPage extends StatefulWidget {
  const EducationFormPage({super.key});

  @override
  State<EducationFormPage> createState() => _EducationFormPageState();
}

class _EducationFormPageState extends State<EducationFormPage> {
  double Height(double h) {
    return ((h / 812) * 100).h;
  }

  double Width(double w) {
    return ((w / 375) * 100).w;
  }

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => SafeArea(
          child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(children: [
            ProfileBar.noIcon(
                BarTitle: 'Education',
                OnBackPressed: () {
                  Navigator.pop(context);
                }),
            Padding(
              padding: EdgeInsets.only(
                  top: Height(32), left: Width(24), right: Width(24)),
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: Width(12), vertical: Height(16)),
                decoration: BoxDecoration(
                    border:
                        Border.all(color: Color.fromARGB(255, 209, 213, 219)),
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'University *',
                      style: TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color.fromARGB(255, 156, 163, 175)),
                    ),
                    ProfileTextField(),
                    Text(
                      'Title',
                      style: TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color.fromARGB(255, 156, 163, 175)),
                    ),
                    ProfileTextField(),
                    Text(
                      'Start Year',
                      style: TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color.fromARGB(255, 156, 163, 175)),
                    ),
                    DatePickerField(),
                    Text(
                      'End Year',
                      style: TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color.fromARGB(255, 156, 163, 175)),
                    ),
                    DatePickerField(),
                    Padding(
                      padding: EdgeInsets.only(top: Height(22)),
                      child: PrimaryButton(
                          buttonText: 'Save', OnPrimaryButtonPressed: () {}),
                    )
                  ],
                ),
              ),
            ),
            EducationExperienceItem(),
            EducationExperienceItem(),
            EducationExperienceItem(),
          ]),
        ),
      )),
    );
  }
}
