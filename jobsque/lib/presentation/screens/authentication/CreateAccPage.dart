import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobsque/presentation/reusable_components/authentication/platformAuthBtn.dart';
import 'package:jobsque/presentation/reusable_components/primaryButton.dart';
import 'package:sizer/sizer.dart';

import '../../reusable_components/authentication/authTextField.dart';
// import 'package:google_fonts/google_fonts.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({Key? key}) : super(key: key);

  @override
  _CreateAccountPageState createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  double? _calculateHeight(double h) {
    return ((h / 812) * 100).h;
  }

  double? _calculateWidth(double w) {
    return ((w / 375) * 100).w;
  }

  TextEditingController? textController1;
  TextEditingController? textController2;
  TextEditingController? textController3;
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    textController1?.dispose();
    textController2?.dispose();
    textController3?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) => Scaffold(
              key: scaffoldKey,
              backgroundColor: Colors.white,
              body: SafeArea(
                child: GestureDetector(
                    onTap: () => FocusScope.of(context).unfocus(),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                _calculateWidth(24)!,
                                _calculateHeight(24)!,
                                _calculateWidth(24)!,
                                0),
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
                                  width: _calculateWidth(81),
                                  height: _calculateHeight(19),
                                  fit: BoxFit.contain,
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Create Account',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                      fontFamily: 'SF Pro Display',
                                      fontSize: 28,
                                      fontWeight: FontWeight.w500,
                                    )),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 8, 0, 0),
                                  child: Text(
                                      'Please create an account to find your dream job',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: 'SF Pro Display',
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                      )),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    _calculateWidth(24)!,
                                    _calculateWidth(47)!,
                                    _calculateWidth(24)!,
                                    0),
                                child: Container(
                                  width: 87.2.w,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                          width: 87.2.w,
                                          child: AuthTextField(
                                            keyboardtype: TextInputType.text,
                                            isHidden: false,
                                            controller: textController1,
                                            hinttext: "Username",
                                            prefixIcon:
                                                'assets/icons/profile.svg',
                                          )),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 1.97.h, 0, 0),
                                        child: Container(
                                            width: 87.2.w,
                                            child: AuthTextField(
                                              keyboardtype:
                                                  TextInputType.emailAddress,
                                              isHidden: false,
                                              controller: textController2,
                                              hinttext: "Email",
                                              prefixIcon:
                                                  'assets/icons/sms.svg',
                                            )),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 1.97.h, 0, 0),
                                        child: Container(
                                            width: 87.2.w,
                                            child: AuthTextField(
                                              keyboardtype: TextInputType.text,
                                              isHidden: true,
                                              controller: textController3,
                                              hinttext: "Password",
                                              suffixIcon:
                                                  'assets/icons/eye-slash.svg',
                                              prefixIcon:
                                                  'assets/icons/lock.svg',
                                            )),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24, 11, 0, 0),
                                child: Text(
                                  'Password must be at least 8 characters',
                                  style: TextStyle(
                                    fontFamily: 'SF Pro Display',
                                    color: Color(0xFF9CA3AF),
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0, _calculateHeight(120)!, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      84, 0, 0, 0),
                                  child: Text(
                                    'Already have an account?',
                                    style: TextStyle(
                                      fontFamily: 'SF Pro Display',
                                      color: Color(0xFF9CA3AF),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      7, 0, 0, 0),
                                  child: Text(
                                    'Login',
                                    style: TextStyle(
                                      fontFamily: 'SF Pro Display',
                                      color: Color(0xFF3366FF),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                            child: PrimaryButton(
                              OnPrimaryButtonPressed: () {},
                              buttonText: "Create Account",
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24, 2, 0, 0),
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
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      22, 0, 0, 0),
                                  child: Text('Or Sign up With Account',
                                      style: TextStyle(
                                        fontFamily: 'SF Pro Display',
                                        color: Color(0xFF6B7280),
                                        fontWeight: FontWeight.normal,
                                      )),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      22, 0, 24, 0),
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
                                _calculateWidth(24)!,
                                _calculateHeight(24)!,
                                _calculateWidth(24)!,
                                0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 0),
                                  child: platformButton(
                                    name: "Google",
                                    icon: FaIcon(
                                      FontAwesomeIcons.google,
                                      size: 18,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 0, 0),
                                  child: platformButton(
                                    name: "Facebook",
                                    icon: FaIcon(
                                      FontAwesomeIcons.facebook,
                                      size: 18,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
            ));
  }
}
