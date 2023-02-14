import 'package:flutter/material.dart';
import 'package:jobsque/presentation/reusable_components/primaryButton.dart';
import 'package:sizer/sizer.dart';
import 'package:jobsque/constants/pages.dart' as pages;

class EmailCheckPage extends StatelessWidget {
  const EmailCheckPage({super.key});
  double? Height(double h) {
    return ((h / 812) * 100).h;
  }

  double? Width(double w) {
    return ((w / 375) * 100).w;
  }

  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) => Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                        Width(101)!, Height(161)!, Width(101)!, 0),
                    child: Image.asset(
                      'assets/emailcheck.png',
                      width: Width(173),
                      height: Height(142),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                        Width(25)!, Height(24)!, Width(25)!, 0),
                    child: Text(
                      'Check your Email',
                      style: TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 17, 24, 39)),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                        Width(25)!, Height(8)!, Width(25)!, 0),
                    child: Text(
                      'We have sent a reset password to your email address',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromARGB(255, 107, 114, 128),
                          fontFamily: 'SF Pro Display',
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                        Width(24)!, Height(336)!, Width(24)!, 0),
                    child: Container(
                      // margin:
                      //     EdgeInsetsDirectional.fromSTEB(0, 0, 0, Height(20)!),
                      child: PrimaryButton(
                          buttonText: 'Open email app',
                          OnPrimaryButtonPressed: () {
                            Navigator.pushNamed(
                                context, pages.Create_New_Password);
                          }),
                    ),
                  ),
                ],
              ),
            )));
  }
}
