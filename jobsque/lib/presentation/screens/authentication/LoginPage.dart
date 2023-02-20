import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/presentation/reusable_components/authentication/AuthBottomButtons.dart';
import 'package:jobsque/presentation/reusable_components/authentication/AuthTextField.dart';

import 'package:sizer/sizer.dart';
import 'package:jobsque/constants/pages.dart' as pages;
// import 'package:google_fonts/google_fonts.dart';

class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({Key? key}) : super(key: key);

  @override
  _LoginPageWidgetState createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget> {
  TextEditingController? textController1;
  TextEditingController? textController2;
  bool? checkboxValue;
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  double Height(double h) {
    return ((h / 812) * 100).h;
  }

  double Width(double w) {
    return ((w / 375) * 100).w;
  }

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    textController1?.dispose();
    textController2?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: ((context, orientation, deviceType) => Scaffold(
            key: scaffoldKey,
            backgroundColor: Colors.white,
            body: SafeArea(
              child: GestureDetector(
                onTap: () => FocusScope.of(context).unfocus(),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0, 3.94.h, 6.4.w, 0),
                            child: SvgPicture.asset(
                              'assets/Logo.svg',
                              width: Width(81),
                              height: Height(19),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 5.4.h, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  6.4.w, 0, 0, 0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Login',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          fontFamily: 'SF Pro Display',
                                          fontSize: 28,
                                          fontWeight: FontWeight.w500)),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 0.98.h, 0, 0),
                                    child: Text(
                                        'Please login to find your dream job',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            fontFamily: 'SF Pro Display',
                                            fontSize: 16,
                                            fontWeight: FontWeight.w400)),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                Width(24), Width(47), Width(24), 0),
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
                                        prefixIcon: 'assets/icons/profile.svg',
                                      )),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 1.97.h, 0, 0),
                                    child: Container(
                                        width: 87.2.w,
                                        child: AuthTextField(
                                          keyboardtype: TextInputType.text,
                                          isHidden: true,
                                          controller: textController2,
                                          hinttext: "Password",
                                          suffixIcon:
                                              'assets/icons/eye-slash.svg',
                                          prefixIcon: 'assets/icons/lock.svg',
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0, Height(5), 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  Width(14), 0, 0, 0),
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
                            Text(
                              'Remember me',
                              style: TextStyle(
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  Width(90), 0, Width(24), 0),
                              child: Text(
                                'Forgot Password?',
                                style: TextStyle(
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF3366FF)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: Height(171), bottom: Height(27)),
                        child: AuthBottomButtons(
                          ButtonText: "Login",
                          DividerText: 'Or Login With Account',
                          LabelText: 'Dont’t have an account?',
                          LoginRegister: "Register",
                          OnButtonPressed: () {
                            Navigator.pushReplacementNamed(
                                context, pages.App_Main_Page);
                          },
                          OnTextPressed: () {
                            Navigator.pushNamed(context, pages.Create_Account);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ))));
  }
}
