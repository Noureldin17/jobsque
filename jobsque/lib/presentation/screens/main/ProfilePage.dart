import 'package:flutter/material.dart';
import 'package:jobsque/presentation/reusable_components/ListDivider.dart';
import 'package:jobsque/presentation/reusable_components/profile/ProfileAbout.dart';
import 'package:jobsque/presentation/reusable_components/profile/ProfileBar.dart';
import 'package:jobsque/presentation/reusable_components/profile/ProfileJobStatus.dart';
import 'package:jobsque/presentation/reusable_components/profile/ProfileListItem.dart';
import 'package:sizer/sizer.dart';
import 'package:jobsque/constants/pages.dart' as pages;

class ProfilePage extends StatefulWidget {
  ProfilePage({super.key});
  double Height(double h) {
    return ((h / 756) * 100).h;
  }

  double Width(double w) {
    return ((w / 375) * 100).w;
  }

  final TextEditingController controller = TextEditingController();

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) => SafeArea(
                child: Scaffold(
              backgroundColor: Colors.white,
              body: SingleChildScrollView(
                  child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        color: Color.fromARGB(255, 214, 228, 255),
                        width: 100.w,
                        height: widget.Height(195),
                      ),
                      Column(
                        children: [
                          ProfileBar(),
                          Padding(
                            padding: EdgeInsets.only(top: widget.Height(85)),
                            child: Center(
                              child: CircleAvatar(
                                radius: 45,
                                backgroundImage:
                                    AssetImage('assets/ProfilePic.png'),
                              ),
                            ),
                          ),
                          Padding(
                              padding: EdgeInsetsDirectional.only(
                                  top: widget.Height(16))),
                          Text(
                            'Rafif Dian Axelingga',
                            style: TextStyle(
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w500,
                                fontSize: 20,
                                color: Color.fromARGB(255, 17, 24, 39)),
                          ),
                          Padding(
                              padding: EdgeInsetsDirectional.only(
                                  top: widget.Height(4))),
                          Text(
                            'Senior UI/UX Designer',
                            style: TextStyle(
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color.fromARGB(255, 107, 114, 128)),
                          ),
                          Padding(
                              padding: EdgeInsetsDirectional.only(
                                  top: widget.Height(24))),
                          ProfileJobStatus(),
                          Padding(
                              padding: EdgeInsetsDirectional.only(
                                  top: widget.Height(30))),
                          ProfileAbout(
                            controller: widget.controller,
                          ),
                          Padding(
                              padding: EdgeInsetsDirectional.only(
                                  top: widget.Height(30))),
                          ListDivider.left(divText: 'General'),
                          Padding(
                              padding: EdgeInsetsDirectional.only(
                                  top: widget.Height(16))),
                          ProfileListItem.hasIcon(
                              Route: pages.Edit_Profile_Page,
                              ItemText: 'Edit Profile',
                              IconAsset:
                                  'assets/icons/navbar_icons/profile.svg'),
                          ProfileListItem.hasIcon(
                              Route: pages.Portfolio_Upload_Page,
                              ItemText: 'Portfolio',
                              IconAsset: 'assets/icons/folder-favorite.svg'),
                          ProfileListItem.hasIcon(
                              Route: pages.Language_Setting_Page,
                              ItemText: 'Langauge',
                              IconAsset: 'assets/icons/global.svg'),
                          ProfileListItem.hasIcon(
                              Route: pages.Notification_Setting_Page,
                              ItemText: 'Notification',
                              IconAsset: 'assets/icons/notification.svg'),
                          ProfileListItem.hasIcon(
                              Route: pages.Security_Setting_Page,
                              ItemText: 'Login and security',
                              IconAsset: 'assets/icons/lock.svg'),
                          Padding(
                              padding: EdgeInsetsDirectional.only(
                                  top: widget.Height(22))),
                          ListDivider.left(divText: 'Others'),
                          Padding(
                              padding: EdgeInsetsDirectional.only(
                                  top: widget.Height(16))),
                          ProfileListItem(
                            Route: pages.Edit_Profile_Page,
                            ItemText: 'Accesibility',
                          ),
                          ProfileListItem(
                            Route: pages.Help_Center_Page,
                            ItemText: 'Help Center',
                          ),
                          ProfileListItem(
                            Route: pages.TermsAndConditions_Page,
                            ItemText: 'Terms & Conditions',
                          ),
                          ProfileListItem(
                            Route: pages.Privacy_Policy_Page,
                            ItemText: 'Privacy Policy',
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              )),
            )));
  }
}
