import 'package:flutter/cupertino.dart';

import 'package:flutter_svg/flutter_svg.dart';

class JobApplicationSteps extends StatelessWidget {
  const JobApplicationSteps({
    super.key,
    required this.UploadActive,
    required this.WorkTypeActive,
    required this.UploadHighlited,
    required this.WorkTypeHighlited,
  })  : circleHeight = 44,
        circleWidth = 44;
  const JobApplicationSteps.small({
    super.key,
    required this.UploadActive,
    required this.WorkTypeActive,
    required this.UploadHighlited,
    required this.WorkTypeHighlited,
  })  : circleHeight = 24,
        circleWidth = 24;

  final double circleWidth;
  final double circleHeight;

  final bool WorkTypeActive;
  final bool UploadActive;

  final bool WorkTypeHighlited;
  final bool UploadHighlited;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      mainAxisSize: MainAxisSize.max,
      children: [
        Column(
          children: [
            SvgPicture.asset(
              'assets/job_app_steps/tick-circle.svg',
              width: circleWidth,
              height: circleHeight,
              fit: BoxFit.scaleDown,
            ),
            Padding(padding: EdgeInsets.only(top: 8)),
            Text(
              'Biodata',
              style: TextStyle(
                  fontFamily: 'SF Pro Display',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 51, 102, 255)),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: SvgPicture.asset(
            'assets/job_app_steps/Line.svg',
            color: WorkTypeActive || WorkTypeHighlited
                ? Color.fromARGB(255, 51, 102, 255)
                : Color.fromARGB(255, 209, 213, 219),
            fit: BoxFit.scaleDown,
          ),
        ),
        Container(
          child: Column(
            children: [
              WorkTypeHighlited
                  ? SvgPicture.asset(
                      'assets/job_app_steps/tick-circle.svg',
                      width: circleWidth,
                      height: circleHeight,
                      fit: BoxFit.scaleDown,
                    )
                  : WorkTypeActive
                      ? SvgPicture.asset(
                          'assets/job_app_steps/step2.svg',
                          width: circleWidth,
                          height: circleHeight,
                          color: Color.fromARGB(255, 51, 102, 255),
                          fit: BoxFit.scaleDown,
                        )
                      : SvgPicture.asset(
                          'assets/job_app_steps/step2.svg',
                          width: circleWidth,
                          height: circleHeight,
                          fit: BoxFit.scaleDown,
                        ),
              Padding(padding: EdgeInsets.only(top: 8)),
              Text(
                'Type of work',
                style: TextStyle(
                    fontFamily: 'SF Pro Display',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: UploadActive & WorkTypeHighlited
                        ? Color.fromARGB(255, 51, 102, 255)
                        : Color.fromARGB(255, 17, 24, 39)),
              ),
            ],
          ),
        ),
        Container(
          child: Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: SvgPicture.asset(
              'assets/job_app_steps/Line.svg',
              color: UploadActive & WorkTypeHighlited
                  ? Color.fromARGB(255, 51, 102, 255)
                  : Color.fromARGB(255, 209, 213, 219),
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
        Container(
          child: Column(
            children: [
              UploadHighlited & WorkTypeHighlited
                  ? SvgPicture.asset(
                      'assets/job_app_steps/tick-circle.svg',
                      width: circleWidth,
                      height: circleHeight,
                      fit: BoxFit.scaleDown,
                    )
                  : UploadActive & WorkTypeHighlited
                      ? SvgPicture.asset(
                          'assets/job_app_steps/step3.svg',
                          color: Color.fromARGB(255, 51, 102, 255),
                          width: circleWidth,
                          height: circleHeight,
                          fit: BoxFit.scaleDown,
                        )
                      : SvgPicture.asset(
                          'assets/job_app_steps/step3.svg',
                          width: circleWidth,
                          height: circleHeight,
                          fit: BoxFit.scaleDown,
                        ),
              Padding(padding: EdgeInsets.only(top: 8)),
              Text(
                'Portfolio',
                style: TextStyle(
                    fontFamily: 'SF Pro Display',
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: UploadActive & WorkTypeHighlited
                        ? Color.fromARGB(255, 51, 102, 255)
                        : Color.fromARGB(255, 17, 24, 39)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
