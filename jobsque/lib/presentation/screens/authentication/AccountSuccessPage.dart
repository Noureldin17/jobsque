import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobsque/presentation/reusable_components/primaryButton.dart';
import 'package:sizer/sizer.dart';

class AccountSuccess extends StatelessWidget {
  const AccountSuccess({super.key});
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
                        Width(24)!, Height(24)!, 0, 0),
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          'assets/icons/arrow-left.svg',
                          fit: BoxFit.scaleDown,
                          color: Color.fromARGB(255, 41, 45, 50),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                        Width(101)!, Height(109)!, Width(101)!, 0),
                    child: Image.asset(
                      'assets/accsuccess.png',
                      width: Width(173),
                      height: Height(142),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                        Width(25)!, Height(24)!, Width(25)!, 0),
                    child: Text(
                      'Your account has been set up!',
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
                      'We have customized feeds according to your preferences',
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
                        Width(24)!, Height(322)!, Width(24)!, 0),
                    child: Container(
                      child: PrimaryButton(
                          buttonText: 'Get Started',
                          OnPrimaryButtonPressed: () {}),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                        Width(24)!, Height(0)!, Width(24)!, Height(20)!),
                  )
                ],
              ),
            )));
  }
}
