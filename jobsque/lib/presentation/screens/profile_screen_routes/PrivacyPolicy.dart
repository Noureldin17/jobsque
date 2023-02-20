import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

import '../../reusable_components/profile/ProfileBar.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

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
                  body: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ProfileBar.noIcon(
                              BarTitle: 'Privacy Policy',
                              OnBackPressed: () {
                                Navigator.pop(context);
                              }),
                          Padding(
                            padding: EdgeInsets.only(
                                top: Height(36),
                                left: Width(24),
                                right: Width(24)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Your privacy is important',
                                  style: TextStyle(
                                      fontFamily: 'SF Pro Display',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 17, 24, 39)),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(top: Height(14))),
                                Text(
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vel augue sit amet est molestie viverra. Nunc quis bibendum orci. Donec feugiat massa mi, at hendrerit mauris rutrum at. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vel augue sit amet est molestie viverra. Nunc quis bibendum orci. Donec feugiat massa mi, at hendrerit mauris rutrum at. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vel augue sit amet est molestie viverra. Nunc quis bibendum orci. Donec feugiat massa mi, at hendrerit mauris rutrum at. ',
                                    maxLines: 10,
                                    style: TextStyle(
                                        height: 1.4,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'SF Pro Display',
                                        color: Color.fromARGB(
                                            255, 107, 114, 128))),
                                Padding(
                                    padding: EdgeInsets.only(top: Height(17))),
                                Text(
                                    'Nam vel augue sit amet est molestie viverra. Nunc quis bibendum orci. Donec feugiat massa mi, at hendrerit mauris rutrum at. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vel augue sit amet est molestie viverra. Nunc quis bibendum orci. Donec feugiat massa mi, at hendrerit mauris rutrum at. ',
                                    maxLines: 10,
                                    style: TextStyle(
                                        height: 1.4,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'SF Pro Display',
                                        color: Color.fromARGB(
                                            255, 107, 114, 128))),
                                Padding(
                                    padding: EdgeInsets.only(top: Height(17))),
                                Text(
                                  'Data controllers and contract partners',
                                  style: TextStyle(
                                      fontFamily: 'SF Pro Display',
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20,
                                      color: Color.fromARGB(255, 17, 24, 39)),
                                ),
                                Padding(
                                    padding: EdgeInsets.only(top: Height(14))),
                                Text(
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vel augue sit amet est molestie viverra. Nunc quis bibendum orci. Donec feugiat massa mi, at hendrerit mauris rutrum at. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vel augue sit amet est molestie viverra. Nunc quis bibendum orci. Donec feugiat massa mi, at hendrerit mauris rutrum at. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vel augue sit amet est molestie viverra. Nunc quis bibendum orci. Donec feugiat massa mi, at hendrerit mauris rutrum at. ',
                                    maxLines: 10,
                                    style: TextStyle(
                                        height: 1.3,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'SF Pro Display',
                                        color: Color.fromARGB(
                                            255, 107, 114, 128))),
                                Padding(
                                    padding: EdgeInsets.only(top: Height(14))),
                                Text(
                                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam vel augue sit amet est molestie viverra. Nunc quis bibendum orci. Donec feugiat massa mi, at hendrerit mauris rutrum at. ',
                                    maxLines: 10,
                                    style: TextStyle(
                                        height: 1.3,
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'SF Pro Display',
                                        color: Color.fromARGB(
                                            255, 107, 114, 128))),
                              ],
                            ),
                          ),
                        ]),
                  )),
            ));
  }
}
