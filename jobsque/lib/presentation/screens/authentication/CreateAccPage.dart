import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/presentation/reusable_components/authentication/AuthBottomButtons.dart';

import 'package:sizer/sizer.dart';
import 'package:jobsque/constants/pages.dart' as pages;
import '../../reusable_components/authentication/AuthTextField.dart';
// import 'package:google_fonts/google_fonts.dart';

class CreateAccountPage extends StatefulWidget {
  const CreateAccountPage({Key? key}) : super(key: key);

  @override
  _CreateAccountPageState createState() => _CreateAccountPageState();
}

class _CreateAccountPageState extends State<CreateAccountPage> {
  double Height(double h) {
    return ((h / 812) * 100).h;
  }

  double Width(double w) {
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
              // resizeToAvoidBottomInset: false,
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
                                Width(24), Height(24), Width(24), 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                IconButton(
                                    padding: EdgeInsets.all(0),
                                    splashRadius: 20,
                                    constraints: BoxConstraints(
                                        maxHeight: 40, maxWidth: 40),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    icon: SvgPicture.asset(
                                        'assets/icons/arrow-left.svg')),
                                SvgPicture.asset(
                                  'assets/Logo.svg',
                                  width: Width(81),
                                  height: Height(19),
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
                          // Spacer(),
                          Padding(
                            padding: EdgeInsets.only(
                                bottom: Height(27), top: Height(123)),
                            child: AuthBottomButtons(
                              ButtonText: "Create Account",
                              DividerText: "Or Sign up With Account",
                              LabelText: "Already have an account?",
                              LoginRegister: "Login",
                              OnTextPressed: () {
                                Navigator.pop(context);
                              },
                              OnButtonPressed: () {
                                Navigator.pushNamed(
                                    context, pages.Interests_Select);
                              },
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
            ));
  }
}
