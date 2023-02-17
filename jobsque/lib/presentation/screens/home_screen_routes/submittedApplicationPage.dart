import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobsque/presentation/reusable_components/primaryButton.dart';
import 'package:jobsque/constants/pages.dart' as pages;

import 'package:sizer/sizer.dart';

import '../../reusable_components/profile/ProfileBar.dart';

class ApplicationSubmittedPage extends StatefulWidget {
  const ApplicationSubmittedPage({super.key});

  @override
  State<ApplicationSubmittedPage> createState() =>
      _ApplicationSubmittedPageState();
}

class _ApplicationSubmittedPageState extends State<ApplicationSubmittedPage> {
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
          body: Column(
            children: [
              ProfileBar.noIcon(BarTitle: 'Apply Job'),
              Padding(
                padding: EdgeInsets.only(left: Width(26), right: Width(26)),
                child: Column(children: [
                  // Padding(
                  //   padding: EdgeInsets.only(top: Height(31)),
                  //   child: Row(
                  //     mainAxisSize: MainAxisSize.max,
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
                    padding: EdgeInsets.only(top: Height(121)),
                    child: SvgPicture.asset('assets/data-illust.svg'),
                  ),
                  Padding(padding: EdgeInsets.only(top: Height(24))),
                  Text('Your data has been successfully sent',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'SF Pro Display',
                          color: Color.fromARGB(255, 17, 24, 39))),
                  Padding(padding: EdgeInsets.only(top: Height(12))),
                  Text(
                      'You will get a message from our team, about the announcement of employee acceptance',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'SF Pro Display',
                          color: Color.fromARGB(255, 107, 114, 128))),
                ]),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.only(bottom: Height(20)),
                child: PrimaryButton(
                    buttonText: 'Back to home',
                    OnPrimaryButtonPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, pages.App_Main_Page, (route) => false);
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
