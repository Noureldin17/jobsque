// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/constants/pages.dart' as pages;
import 'package:jobsque/constants/onboarding_list.dart' as onboardinglist;
import 'package:jobsque/presentation/reusable_components/primaryButton.dart';
import 'package:jobsque/presentation/views/OnBoardingItem.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sizer/sizer.dart';

class OnBoardingPage extends StatefulWidget {
  OnBoardingPage({super.key, this.LastPage});
  bool? LastPage;
  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  double? _calculateHeight(double h) {
    return ((h / 812) * 100).h;
  }

  double? _calculateWidth(double w) {
    return ((w / 375) * 100).w;
  }

  PageController onBoardingPageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) => Scaffold(
              backgroundColor: Colors.white,
              body: Column(
                children: [
                  Stack(alignment: Alignment.topCenter, children: [
                    Container(
                      margin: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      alignment: AlignmentDirectional.topCenter,
                      height: _calculateHeight(700)!,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                              child: PageView.builder(
                            itemBuilder: (context, index) => OnBoardingItem(
                                model: onboardinglist.onboardinglist[index]),
                            itemCount: onboardinglist.onboardinglist.length,
                            physics: const BouncingScrollPhysics(),
                            controller: onBoardingPageController,
                            onPageChanged: (index) {
                              if (index == 2) {
                                widget.LastPage = true;
                              } else {
                                widget.LastPage = false;
                              }
                            },
                          )),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0, _calculateHeight(37)!, 0, 0),
                            child: SmoothPageIndicator(
                              controller: onBoardingPageController,
                              count: onboardinglist.onboardinglist.length,
                              effect: ExpandingDotsEffect(
                                  dotHeight: 6,
                                  dotWidth: 6,
                                  expansionFactor: 2,
                                  activeDotColor:
                                      Color.fromARGB(255, 51, 102, 255),
                                  dotColor: Color.fromARGB(255, 173, 200, 255)),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            _calculateWidth(24)!,
                            _calculateHeight(61)!,
                            _calculateWidth(24)!,
                            0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SvgPicture.asset(
                              'assets/Logo.svg',
                              width: _calculateWidth(81)!,
                              height: _calculateHeight(19)!,
                              fit: BoxFit.fill,
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                              child: GestureDetector(
                                  onTap: () {
                                    Navigator.pushReplacementNamed(
                                        context, pages.Login_Page);
                                  },
                                  child: Text('Skip',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: 'SF Pro Display',
                                        fontSize: 16,
                                        fontWeight: FontWeight.normal,
                                      ))),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]),
                  Padding(
                    child: PrimaryButton(
                      buttonText: 'Next',
                      OnPrimaryButtonPressed: () {
                        if (widget.LastPage == true) {
                          Navigator.pushReplacementNamed(
                              context, pages.Login_Page);
                        } else {
                          onBoardingPageController.nextPage(
                              duration: Duration(milliseconds: 600),
                              curve: Curves.easeInOut);
                        }
                      },
                    ),
                    padding: EdgeInsetsDirectional.fromSTEB(
                        0, _calculateHeight(36)!, 0, 0),
                  ),
                ],
              ),
            ));
  }
}
