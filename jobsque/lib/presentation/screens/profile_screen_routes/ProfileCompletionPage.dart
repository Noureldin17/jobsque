import 'package:flutter/material.dart';
import 'package:jobsque/presentation/reusable_components/profile/ProfileBar.dart';
import 'package:jobsque/presentation/reusable_components/profile/ProfileCompletionItem.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:jobsque/constants/pages.dart' as pages;

import 'package:sizer/sizer.dart';

class ProfileCompletionPage extends StatefulWidget {
  const ProfileCompletionPage({super.key});

  @override
  State<ProfileCompletionPage> createState() => _ProfileCompletionPageState();
}

class _ProfileCompletionPageState extends State<ProfileCompletionPage> {
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
        body: Column(children: [
          ProfileBar.noIcon(BarTitle: 'Complete Profile'),
          Padding(padding: EdgeInsets.only(top: Height(33))),
          CircularPercentIndicator(
            animation: true,
            radius: 50,
            lineWidth: 10,
            circularStrokeCap: CircularStrokeCap.round,
            backgroundColor: Color.fromARGB(255, 229, 231, 235),
            progressColor: Color.fromARGB(255, 51, 102, 255),
            percent: 0.5,
            center: Text(
              '50%',
              style: TextStyle(
                fontFamily: 'SF Pro Display',
                color: Color.fromARGB(255, 51, 102, 255),
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: Height(20))),
          Text(
            '2/4 Completed',
            style: TextStyle(
              fontFamily: 'SF Pro Display',
              color: Color.fromARGB(255, 51, 102, 255),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          Padding(padding: EdgeInsets.only(top: Height(8))),
          Text(
            'Complete your profile before applying for a job',
            style: TextStyle(
              fontFamily: 'SF Pro Display',
              color: Color.fromARGB(255, 107, 114, 128),
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          Padding(padding: EdgeInsets.only(top: Height(34))),
          ProfileCompletionItem(
              OnSelected: () {
                Navigator.pushNamed(context, pages.Personal_Details_Page);
              },
              isCompleted: true,
              title: 'Personal Details',
              description: 'Full name, email, phone number, and your address'),
          ProfileCompletionItem(
              OnSelected: () {
                Navigator.pushNamed(context, pages.Education_Page);
              },
              isCompleted: true,
              title: 'Education',
              description:
                  'Enter your educational history to be considered by the recruiter'),
          ProfileCompletionItem(
              OnSelected: () {
                Navigator.pushNamed(context, pages.Experience_Page);
              },
              isCompleted: false,
              title: 'Experience',
              description:
                  'Enter your work experience to be considered by the recruiter'),
          ProfileCompletionItem(
              OnSelected: () {
                Navigator.pushNamed(context, pages.Portfolio_Upload_Page);
              },
              isCompleted: false,
              title: 'Portfolio',
              description:
                  'Create your portfolio. Applying for various types of jobs is easier.'),
        ]),
      )),
    );
  }
}
