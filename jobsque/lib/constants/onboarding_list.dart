import 'package:flutter/material.dart';

import '../data/models/onboarding_model.dart';

final List<OnBoardingModel> onboardinglist = [
  OnBoardingModel(
      image: 'assets/Background.png',
      textContainer: Container(
          child: RichText(
              text: TextSpan(children: [
        TextSpan(
            text: "Find a job, and ",
            style: TextStyle(
                color: Color.fromARGB(255, 17, 24, 39),
                fontSize: 32,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w500)),
        TextSpan(
            text: 'start building ',
            style: TextStyle(
                color: Color.fromARGB(255, 51, 102, 255),
                fontSize: 32,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w500)),
        TextSpan(
            text: "your career from now on",
            style: TextStyle(
                color: Color.fromARGB(255, 17, 24, 39),
                fontSize: 32,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w500))
      ]))),
      body:
          'Explore over 25,924 available job roles and upgrade your operator now.'),
  OnBoardingModel(
      image: 'assets/Background2.png',
      textContainer: Container(
          child: RichText(
              text: TextSpan(children: [
        TextSpan(
            text: "Hundreds of jobs are waiting for you to ",
            style: TextStyle(
                color: Color.fromARGB(255, 17, 24, 39),
                fontSize: 32,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w500)),
        TextSpan(
            text: 'join together',
            style: TextStyle(
                color: Color.fromARGB(255, 51, 102, 255),
                fontSize: 32,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w500)),
      ]))),
      body:
          'Immediately join us and start applying for the job you are interested in.'),
  OnBoardingModel(
      image: 'assets/Background3.png',
      textContainer: Container(
          child: RichText(
              text: TextSpan(children: [
        TextSpan(
            text: "Get the best ",
            style: TextStyle(
                color: Color.fromARGB(255, 17, 24, 39),
                fontSize: 32,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w500)),
        TextSpan(
            text: 'choice for the job ',
            style: TextStyle(
                color: Color.fromARGB(255, 51, 102, 255),
                fontSize: 32,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w500)),
        TextSpan(
            text: "you've always dreamed of",
            style: TextStyle(
                color: Color.fromARGB(255, 17, 24, 39),
                fontSize: 32,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w500))
      ]))),
      body:
          'The better the skills you have, the greater the good job opportunities for you.')
];
