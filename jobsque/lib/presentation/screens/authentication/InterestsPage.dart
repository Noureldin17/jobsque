import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:jobsque/presentation/reusable_components/getting_started/interestsCard.dart';
import 'package:jobsque/presentation/reusable_components/primaryButton.dart';
import 'package:sizer/sizer.dart';
import 'package:jobsque/constants/interests_items.dart' as interestslist;
import '../../../constants/interests_items.dart';
import 'package:jobsque/constants/pages.dart' as pages;

class InterestsPage extends StatefulWidget {
  InterestsPage({super.key});
  double? Height(double h) {
    return ((h / 812) * 100).h;
  }

  double? Width(double w) {
    return ((w / 375) * 100).w;
  }

  static final List<interets> list = interestslist.interestsList;
  @override
  State<InterestsPage> createState() => _InterestsPageState();
}

class _InterestsPageState extends State<InterestsPage> {
  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) => Scaffold(
              backgroundColor: Colors.white,
              body: SafeArea(
                  child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(widget.Width(24)!,
                        widget.Height(30)!, widget.Width(24)!, 0),
                    child: Text(
                      "What type of work are you interested in?",
                      style: TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontSize: 28,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(widget.Width(24)!,
                        widget.Height(12)!, widget.Width(24)!, 0),
                    child: Text(
                        'Tell us what you’re interested in so we can customise the app for your needs.',
                        style: TextStyle(
                            fontFamily: 'SF Pro Display',
                            fontSize: 16,
                            fontWeight: FontWeight.normal)),
                  ),
                  Expanded(
                      child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              widget.Width(24)!,
                              widget.Height(36)!,
                              widget.Width(24)!,
                              0),
                          child: StaggeredGrid.count(
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            children: InterestsPage.list.map((value) {
                              return InterestsCard(
                                key: ValueKey(value.iconAsset),
                                cardIconAsset: value.iconAsset,
                                cardText: value.text,
                              );
                            }).toList(),
                          ))),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                        0, 0, 0, widget.Height(20)!),
                    child: PrimaryButton(
                        buttonText: "Next",
                        OnPrimaryButtonPressed: () {
                          Navigator.pushNamed(context, pages.locationsScreen);
                        }),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                        0, 0, 0, widget.Height(20)!),
                    child: PrimaryButton(
                        buttonText: "Next", OnPrimaryButtonPressed: () {}),
                  ),
                ],
              )),
            ));
  }
}
