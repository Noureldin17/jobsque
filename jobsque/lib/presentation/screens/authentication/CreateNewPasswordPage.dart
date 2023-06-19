import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sizer/sizer.dart';
import 'package:jobsque/constants/pages.dart' as pages;
import '../../reusable_components/authentication/AuthTextField.dart';
import '../../reusable_components/PrimaryButton.dart';

class CreateNewPassword extends StatefulWidget {
  CreateNewPassword({super.key});
  final TextEditingController? textController1 = TextEditingController();
  final TextEditingController? textController2 = TextEditingController();
  double? Height(double h) {
    return ((h / 812) * 100).h;
  }

  double? Width(double w) {
    return ((w / 375) * 100).w;
  }

  @override
  State<CreateNewPassword> createState() => _CreateNewPasswordState();
}

class _CreateNewPasswordState extends State<CreateNewPassword> {
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
                          'Create new password',
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
                          'Set your new password so you can login and access Jobsque',
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
                          keyboardtype: TextInputType.text,
                          isHidden: true,
                          controller: widget.textController1,
                          hinttext: "Password",
                          suffixIcon: 'assets/icons/eye-slash.svg',
                          prefixIcon: 'assets/icons/lock.svg',
                        )),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(widget.Width(24)!,
                        widget.Height(12)!, widget.Width(24)!, 0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Password must be at least 8 characters',
                        style: TextStyle(
                            fontFamily: 'SF Pro Display',
                            fontSize: 16,
                            color: Color.fromARGB(255, 156, 163, 175),
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                        0, widget.Height(24)!, 0, 0),
                    child: Container(
                        width: 87.2.w,
                        child: AuthTextField(
                          keyboardtype: TextInputType.text,
                          isHidden: true,
                          controller: widget.textController2,
                          hinttext: "Password",
                          suffixIcon: 'assets/icons/eye-slash.svg',
                          prefixIcon: 'assets/icons/lock.svg',
                        )),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(widget.Width(24)!,
                        widget.Height(12)!, widget.Width(24)!, 0),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Both password must match',
                        style: TextStyle(
                            fontFamily: 'SF Pro Display',
                            fontSize: 16,
                            color: Color.fromARGB(255, 156, 163, 175),
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                        0, widget.Height(310)!, 0, widget.Height(10)!),
                    child: PrimaryButton(
                        buttonText: "Reset Password",
                        OnPrimaryButtonPressed: () {
                          Navigator.pushNamed(
                              context, pages.Password_Changed_Success);
                        }),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
