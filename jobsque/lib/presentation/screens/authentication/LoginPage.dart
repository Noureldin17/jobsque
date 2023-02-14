import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jobsque/presentation/reusable_components/authentication/authTextField.dart';
import 'package:jobsque/presentation/reusable_components/authentication/platformAuthBtn.dart';
import 'package:jobsque/presentation/reusable_components/primaryButton.dart';
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
  double? _calculateHeight(double h) {
    return ((h / 812) * 100).h;
  }

  double? _calculateWidth(double w) {
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
                              width: _calculateWidth(81),
                              height: _calculateHeight(19),
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
                                            fontWeight: FontWeight.normal)),
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
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0, _calculateHeight(5)!, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  _calculateWidth(14)!, 0, 0, 0),
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
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  _calculateWidth(90)!,
                                  0,
                                  _calculateWidth(24)!,
                                  0),
                              child: Text(
                                'Forgot Password?',
                                style: TextStyle(
                                    fontFamily: 'SF Pro Display',
                                    fontWeight: FontWeight.normal,
                                    color: Color(0xFF3366FF)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0, _calculateHeight(170)!, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  _calculateWidth(84)!, 0, 0, 0),
                              child: Text(
                                'Don\'t have an account?',
                                style: TextStyle(
                                  fontFamily: 'SF Pro Display',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  _calculateHeight(7)!, 0, 0, 0),
                              child: GestureDetector(
                                  onTap: () {
                                    Navigator.pushNamed(
                                        context, pages.Create_Account);
                                  },
                                  child: Text(
                                    'Register',
                                    style: TextStyle(
                                      fontFamily: 'SF Pro Display',
                                      color: Color(0xFF3366FF),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0, _calculateHeight(24)!, 0, 0),
                          child: PrimaryButton(
                            OnPrimaryButtonPressed: () {},
                            buttonText: "Login",
                          )),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0, _calculateHeight(20)!, 0, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  _calculateWidth(24)!,
                                  _calculateHeight(2)!,
                                  0,
                                  0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  SizedBox(
                                    width: _calculateWidth(70),
                                    child: Divider(
                                      thickness: 1,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    _calculateWidth(22)!, 0, 0, 0),
                                child: Text(
                                  'Or Login With Account',
                                  style: TextStyle(
                                    fontFamily: 'SF Pro Display',
                                    color: Color(0xFF6B7280),
                                    fontWeight: FontWeight.normal,
                                  ),
                                )),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  _calculateWidth(22)!,
                                  0,
                                  _calculateWidth(24)!,
                                  0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  SizedBox(
                                    width: _calculateWidth(70)!,
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
                                  _calculateWidth(0)!, 0, 0, 0),
                              child: platformButton(
                                icon: FaIcon(
                                  FontAwesomeIcons.google,
                                  size: 18,
                                ),
                                name: "Google",
                              ),
                            ),
                            Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    _calculateWidth(0)!,
                                    0,
                                    _calculateWidth(0)!,
                                    0),
                                child: platformButton(
                                  icon: FaIcon(
                                    FontAwesomeIcons.facebook,
                                    size: 18,
                                  ),
                                  name: "Facebook",
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ))));
  }
}
