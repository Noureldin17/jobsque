import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';
// import 'package:jobsque/constants/pages.dart' as pages;

import '../PrimaryButton.dart';
import 'PlatformAuthBtn.dart';

class AuthBottomButtons extends StatefulWidget {
  const AuthBottomButtons({
    super.key,
    required this.ButtonText,
    required this.DividerText,
    required this.LabelText,
    required this.LoginRegister,
    required this.OnButtonPressed,
    required this.OnTextPressed,
  });

  final Function OnTextPressed;
  final Function OnButtonPressed;

  final String LabelText;
  final String LoginRegister;
  final String DividerText;
  final String ButtonText;

  @override
  State<AuthBottomButtons> createState() => _AuthBottomButtonsState();
}

class _AuthBottomButtonsState extends State<AuthBottomButtons> {
  double Height(double h) {
    return ((h / 812) * 100).h;
  }

  double Width(double w) {
    return ((w / 375) * 100).w;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // Spacer(),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(84, 0, 0, 0),
                child: Text(
                  widget.LabelText,
                  style: TextStyle(
                    fontFamily: 'SF Pro Display',
                    color: Color(0xFF9CA3AF),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(7, 0, 0, 0),
                child: GestureDetector(
                  onTap: () {
                    widget.OnTextPressed();
                  },
                  child: Text(
                    widget.LoginRegister,
                    style: TextStyle(
                      fontFamily: 'SF Pro Display',
                      color: Color(0xFF3366FF),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
            child: PrimaryButton(
              OnPrimaryButtonPressed: () {
                widget.OnButtonPressed();
              },
              buttonText: widget.ButtonText,
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24, 2, 0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        width: 70,
                        child: Divider(
                          thickness: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(22, 0, 0, 0),
                  child: Text(widget.DividerText,
                      style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        color: Color(0xFF6B7280),
                        fontWeight: FontWeight.w500,
                      )),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(22, 0, 24, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        width: 70,
                        child: Divider(
                          thickness: 1,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(
                Width(24), Height(24), Width(24), 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                  child: platformButton(
                    name: "Google",
                    // icon: SvgPicture.asset('assets/google.svg')
                    icon: Image.asset(
                      'assets/google.png',
                      width: 16,
                      height: 16,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                  child: platformButton(
                      name: "Facebook",
                      // icon: SvgPicture.asset(
                      //   'assets/Facebook.svg',
                      //   fit: BoxFit.scaleDown,
                      // )
                      icon: Image.asset(
                        'assets/Facebook.png',
                        fit: BoxFit.scaleDown,
                        width: 20,
                        height: 20,
                      )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
