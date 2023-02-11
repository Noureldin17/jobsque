// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:jobsque/data/models/onboarding_model.dart';
import 'package:sizer/sizer.dart';

class OnBoardingItem extends StatelessWidget {
  OnBoardingItem({super.key, required this.model});
  final OnBoardingModel model;
  double? _calculateHeight(double h) {
    return ((h / 812) * 100).h;
  }

  double? _calculateWidth(double w) {
    return ((w / 375) * 100).w;
  }

  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) => Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                  child: Image.asset(
                    model.image,
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(_calculateWidth(24)!,
                      _calculateHeight(24)!, _calculateWidth(24)!, 0),
                  child: model.textContainer,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(_calculateWidth(24)!,
                      _calculateHeight(12)!, _calculateWidth(20)!, 0),
                  child: Text(
                    model.body,
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w300),
                  ),
                )
              ],
            ));
  }
}
