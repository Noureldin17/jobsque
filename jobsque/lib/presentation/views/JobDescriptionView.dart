import 'package:flutter/material.dart';

// ignore: must_be_immutable
class JobDescriptionTabView extends StatelessWidget {
  JobDescriptionTabView({super.key});

  String description =
      'Your role as the UI Designer is to use interactive components on various platforms (web, desktop and mobile). This will include producing high-fidelity mock-ups, iconography, UI illustrations/graphics, and other graphic elements. As the UI Designer, you will be supporting the wider design team with the internal Design System, tying together the visual language. You will with other UI and UX Designers, Product Managers, and Engineering teams in a highly customer-focused agile environment to help define the vision of the products.';
  String skills =
      '• A strong visual portfolio with clear understanding of UI methodologies\n• Ability to create hi-fidelity mock-ups in Figma\n•Ability to create various graphics for the web e.g. illustrations and icons\n• Able to facilitate workshops and liaise with stakeholders\n• Proficiency in the Adobe Creative Suite\n• Confident communicator with an analytical mindset\n• Design library/Design system experience\n• 4+ years of commercial experience in UI/Visual Design';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(left: 24, right: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.only(top: 27)),
            Text(
              'Job Description',
              style: TextStyle(
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Color.fromARGB(255, 17, 24, 39)),
            ),
            Padding(padding: EdgeInsets.only(top: 8)),
            Text(
              description,
              style: TextStyle(
                  height: 1.3,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color.fromARGB(255, 75, 85, 99)),
            ),
            Padding(padding: EdgeInsets.only(top: 27)),
            Text(
              'Skill Required',
              style: TextStyle(
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: Color.fromARGB(255, 17, 24, 39)),
            ),
            Padding(padding: EdgeInsets.only(top: 8)),
            Text(
              skills,
              style: TextStyle(
                  height: 1.4,
                  fontFamily: 'SF Pro Display',
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color.fromARGB(255, 75, 85, 99)),
            ),
          ],
        ),
      ),
    );
  }
}
