import 'dart:async';
import 'package:jobsque/constants/pages.dart' as pages;
import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashSccreenState();
}

class _SplashSccreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(milliseconds: 3000), () {
      // Navigator.pushReplacementNamed(context, pages.onBoardingPage);
      Navigator.pushNamedAndRemoveUntil(
          context, pages.onBoardingPage, (route) => false);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Center(child: Image.asset('assets/Blur.png')),
        Center(child: SvgPicture.asset('assets/Logo.svg'))
      ],
    ));
  }
}
