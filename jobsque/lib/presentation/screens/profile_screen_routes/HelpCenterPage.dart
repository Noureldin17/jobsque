import 'package:flutter/material.dart';

import 'package:jobsque/presentation/reusable_components/profile/HelpCenterItem.dart';
import 'package:jobsque/presentation/reusable_components/profile/ProfileBar.dart';
import 'package:jobsque/presentation/reusable_components/search/AppSearchBar.dart';
import 'package:sizer/sizer.dart';

class HelpCenterPage extends StatefulWidget {
  const HelpCenterPage({super.key});

  @override
  State<HelpCenterPage> createState() => _HelpCenterPageState();
}

class _HelpCenterPageState extends State<HelpCenterPage> {
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
              body: GestureDetector(
                  onTap: () => FocusScope.of(context).unfocus(),
                  child: SingleChildScrollView(
                    child: Column(children: [
                      ProfileBar.noIcon(
                          BarTitle: 'Help Center',
                          OnBackPressed: () {
                            Navigator.pop(context);
                          }),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                          Width(24),
                          Height(36),
                          Width(24),
                          Height(20),
                        ),
                        child: AppSearchBar(hasIcon: false),
                      ),
                      HelpCenterItem(),
                      HelpCenterItem(),
                      HelpCenterItem(),
                      HelpCenterItem(),
                      HelpCenterItem(),
                      HelpCenterItem(),
                    ]),
                  )),
            )));
  }
}
