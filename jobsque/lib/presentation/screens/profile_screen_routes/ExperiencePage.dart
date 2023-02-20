import 'package:jobsque/presentation/reusable_components/profile/LocationFormField.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';

import '../../reusable_components/PrimaryButton.dart';
import '../../reusable_components/profile/DatePickerField.dart';
import '../../reusable_components/profile/EducationExperienceItem.dart';
import '../../reusable_components/profile/ProfileBar.dart';
import '../../reusable_components/profile/ProfileTextField.dart';

class ExperiencePage extends StatefulWidget {
  const ExperiencePage({super.key});

  @override
  State<ExperiencePage> createState() => _ExperiencePageState();
}

class _ExperiencePageState extends State<ExperiencePage> {
  bool? checkboxValue = false;
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
                BarTitle: 'Experience',
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
                      'Position *',
                      style: TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color.fromARGB(255, 156, 163, 175)),
                    ),
                    ProfileTextField(),
                    Text(
                      'Type of work',
                      style: TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color.fromARGB(255, 156, 163, 175)),
                    ),
                    ProfileTextField(),
                    Text(
                      'Company name *',
                      style: TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color.fromARGB(255, 156, 163, 175)),
                    ),
                    ProfileTextField(),
                    Text(
                      'Location',
                      style: TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color.fromARGB(255, 156, 163, 175)),
                    ),
                    LocationFormField(),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisSize: MainAxisSize.max,
                      children: [
                        SizedBox(
                          height: Height(18),
                          width: Width(18),
                          child: Theme(
                            data: ThemeData(
                              checkboxTheme: CheckboxThemeData(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4),
                                ),
                              ),
                              unselectedWidgetColor: Color(0xFFF5F5F5),
                            ),
                            child: Checkbox(
                              value: checkboxValue ??= true,
                              onChanged: (newValue) {
                                setState(() => checkboxValue = newValue);
                              },
                              activeColor: Color(0xFF3366FF),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: Width(12), bottom: Height(18)),
                          child: Text(
                            'I am currently working in this role',
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      'Start Year *',
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
