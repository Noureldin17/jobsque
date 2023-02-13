import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/presentation/screens/main/AppliedPage.dart';
import 'package:jobsque/presentation/screens/main/Homepage.dart';
import 'package:jobsque/presentation/screens/main/MessagesPage.dart';
import 'package:jobsque/presentation/screens/main/ProfilePage.dart';
import 'package:jobsque/presentation/screens/main/SavedPage.dart';

// ignore: must_be_immutable
class AppMainPage extends StatefulWidget {
  AppMainPage({super.key});
  int currentIndex = 0;
  List<Widget> mainPages = [
    HomePage(),
    MessagesPage(),
    AppliedPage(),
    SavedPage(),
    ProfilePage()
  ];
  @override
  State<AppMainPage> createState() => _AppMainPageState();
}

class _AppMainPageState extends State<AppMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          enableFeedback: false,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Color.fromARGB(255, 156, 163, 175),
          selectedFontSize: 12,
          unselectedFontSize: 12,
          selectedItemColor: Color.fromARGB(255, 51, 102, 255),
          showUnselectedLabels: true,
          items: [
            BottomNavigationBarItem(
                activeIcon: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 4),
                  child: SvgPicture.asset(
                      'assets/icons/navbar_icons/homeactive.svg'),
                ),
                icon: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 4),
                  child: SvgPicture.asset('assets/icons/navbar_icons/home.svg'),
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                activeIcon: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 4),
                  child: SvgPicture.asset(
                      'assets/icons/navbar_icons/messageactive.svg'),
                ),
                icon: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 4),
                  child:
                      SvgPicture.asset('assets/icons/navbar_icons/message.svg'),
                ),
                label: 'Messages'),
            BottomNavigationBarItem(
                activeIcon: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 4),
                  child: SvgPicture.asset(
                      'assets/icons/navbar_icons/briefcaseactive.svg'),
                ),
                icon: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 4),
                  child: SvgPicture.asset(
                      'assets/icons/navbar_icons/briefcase.svg'),
                ),
                label: 'Applied'),
            BottomNavigationBarItem(
                activeIcon: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 4),
                  child: SvgPicture.asset(
                      'assets/icons/navbar_icons/archive-minusactive.svg'),
                ),
                icon: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 4),
                  child: SvgPicture.asset(
                      'assets/icons/navbar_icons/archive-minus.svg'),
                ),
                label: 'Saved'),
            BottomNavigationBarItem(
                activeIcon: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 4),
                  child: SvgPicture.asset(
                    'assets/icons/navbar_icons/profileactive.svg',
                    width: 24,
                    height: 24,
                  ),
                ),
                icon: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 4),
                  child: SvgPicture.asset(
                      'assets/icons/navbar_icons/profile.svg',
                      width: 24,
                      height: 24),
                ),
                label: 'Profile'),
          ],
          showSelectedLabels: true,
          currentIndex: widget.currentIndex,
          onTap: switchPage,
        ),
        backgroundColor: Colors.white,
        body: widget.mainPages.elementAt(widget.currentIndex));
  }

  void switchPage(int value) {
    setState(() {
      widget.currentIndex = value;
    });
  }
}
