import 'package:flutter/material.dart';

import 'package:jobsque/presentation/reusable_components/profile/ProfileBar.dart';
import 'package:sizer/sizer.dart';

class TermsAndConditions extends StatelessWidget {
  const TermsAndConditions({super.key});

  double Height(double h) {
    return ((h / 812) * 100).h;
  }

  double Width(double w) {
    return ((w / 375) * 100).w;
  }

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => SafeArea(
          child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          ProfileBar.noIcon(BarTitle: 'Terms & Conditions'),
          Padding(
            padding: EdgeInsets.only(
                top: Height(36), left: Width(24), right: Width(24)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Lorem ipsum dolor',
                  style: TextStyle(
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Color.fromARGB(255, 17, 24, 39)),
                ),
                Padding(padding: EdgeInsets.only(top: Height(14))),
                Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vel augue sit amet est molestie viverra. Nunc quis bibendum orci. Donec feugiat massa mi, at hendrerit mauris rutrum at. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vel augue sit amet est molestie viverra. Nunc quis bibendum orci. Donec feugiat massa mi, at hendrerit mauris rutrum at. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vel augue sit amet est molestie viverra. Nunc quis bibendum orci. Donec feugiat massa mi, at hendrerit mauris rutrum at. ',
                    maxLines: 10,
                    style: TextStyle(
                        height: 1.3,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'SF Pro Display',
                        color: Color.fromARGB(255, 107, 114, 128))),
                Padding(padding: EdgeInsets.only(top: Height(17))),
                Text(
                  'Lorem ipsum dolor',
                  style: TextStyle(
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Color.fromARGB(255, 17, 24, 39)),
                ),
                Padding(padding: EdgeInsets.only(top: Height(14))),
                Text(
                    'Nunc quis bibendum orci. Donec feugiat massa mi, at hendrerit mauris rutrum at. Lorem ipsum dolor sit amet, consectetur adipiscing elit. ',
                    maxLines: 10,
                    style: TextStyle(
                        height: 1.3,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'SF Pro Display',
                        color: Color.fromARGB(255, 107, 114, 128))),
                Padding(padding: EdgeInsets.only(top: Height(14))),
                Container(
                  padding: EdgeInsets.symmetric(
                      horizontal: Width(14), vertical: Height(12)),
                  color: Color.fromARGB(255, 244, 244, 245),
                  child: Text(
                      'Nunc quis bibendum orci. Donec feugiat massa mi, at hendrerit mauris rutrum at. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vel augue sit amet est molestie viverra. Nunc quis bibendum orci. Donec feugiat massa mi, at hendrerit mauris rutrum at. ',
                      maxLines: 10,
                      style: TextStyle(
                          height: 1.3,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'SF Pro Display',
                          color: Color.fromARGB(255, 107, 114, 128))),
                ),
                Padding(padding: EdgeInsets.only(top: Height(14))),
                Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vel augue sit amet est molestie viverra. Nunc quis bibendum orci. Donec feugiat massa mi, at hendrerit mauris rutrum at. ',
                    maxLines: 10,
                    style: TextStyle(
                        height: 1.3,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontFamily: 'SF Pro Display',
                        color: Color.fromARGB(255, 107, 114, 128))),
              ],
            ),
          ),
        ]),
      )),
    );
  }
}
