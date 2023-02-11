import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:jobsque/constants/pages.dart' as pages;
import '../../reusable_components/authTextField.dart';
import '../../reusable_components/primaryButton.dart';

class ResetPassword extends StatefulWidget {
  ResetPassword({super.key});
  final TextEditingController? textController1 = TextEditingController();
  double? Height(double h) {
    return ((h / 812) * 100).h;
  }

  double? Width(double w) {
    return ((w / 375) * 100).w;
  }

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(widget.Width(24)!,
                        widget.Height(24)!, widget.Width(24)!, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SvgPicture.asset(
                          'assets/icons/arrow-left.svg',
                          fit: BoxFit.scaleDown,
                          color: Color.fromARGB(255, 41, 45, 50),
                        ),
                        SvgPicture.asset(
                          'assets/Logo.svg',
                          width: widget.Width(81),
                          height: widget.Height(19),
                          fit: BoxFit.contain,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(widget.Width(24)!,
                          widget.Height(44)!, widget.Width(24)!, 0),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Reset Password',
                          style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w500,
                              fontSize: 28,
                              color: Color.fromARGB(255, 17, 24, 39)),
                        ),
                      )),
                  Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(widget.Width(24)!,
                          widget.Height(8)!, widget.Width(24)!, 0),
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Enter the email address you used when you joined and we’ll send you instructions to reset your password.',
                          style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              color: Color.fromARGB(255, 107, 114, 128)),
                        ),
                      )),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                        0, widget.Height(40)!, 0, 0),
                    child: Container(
                        width: 87.2.w,
                        child: AuthTextField(
                          keyboardtype: TextInputType.emailAddress,
                          isHidden: false,
                          controller: widget.textController1,
                          hinttext: "Email",
                          prefixIcon: 'assets/icons/sms.svg',
                        )),
                  ),
                  Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(widget.Width(75)!,
                          widget.Height(405)!, widget.Width(75)!, 0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'You remember your password',
                              style: TextStyle(
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 107, 114, 128)),
                            ),
                            Text(
                              'Login',
                              style: TextStyle(
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color.fromARGB(255, 51, 102, 255)),
                            ),
                          ])),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                        0, widget.Height(10)!, 0, widget.Height(20)!),
                    child: PrimaryButton(
                        buttonText: "Request Password Reset",
                        OnPrimaryButtonPressed: () {
                          Navigator.pushNamed(context, pages.emailCheckScreen);
                        }),
                  ),
                  // Padding(
                  //   padding: EdgeInsetsDirectional.fromSTEB(
                  //       widget.Width(24)!,
                  //       widget.Height(0)!,
                  //       widget.Width(24)!,
                  //       widget.Height(20)!),
                  // )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
