import 'package:flutter/material.dart';
import 'package:jobsque/presentation/reusable_components/ListDivider.dart';

import 'package:jobsque/presentation/reusable_components/search/PopularSearchItem.dart';
import 'package:jobsque/presentation/reusable_components/search/RecentSearchItem.dart';
import 'package:jobsque/presentation/reusable_components/search/SearchAppBar.dart';
import 'package:sizer/sizer.dart';

class JobSearchPage extends StatefulWidget {
  const JobSearchPage({super.key});
  double? Height(double h) {
    return ((h / 812) * 100).h;
  }

  double? Width(double w) {
    return ((w / 375) * 100).w;
  }

  @override
  State<JobSearchPage> createState() => _JobSearchPageState();
}

class _JobSearchPageState extends State<JobSearchPage> {
  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) => SafeArea(
            child: Scaffold(
                appBar: SearchAppBar(),
                backgroundColor: Colors.white,
                body: SafeArea(
                  child: SingleChildScrollView(
                      child: Column(
                    children: [
                      ListDivider.left(divText: 'Recent Searches'),
                      RecentSearchItem(),
                      RecentSearchItem(),
                      RecentSearchItem(),
                      RecentSearchItem(),
                      RecentSearchItem(),
                      RecentSearchItem(),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            widget.Width(0)!,
                            widget.Height(33)!,
                            widget.Width(0)!,
                            widget.Height(0)!),
                        child: ListDivider.left(divText: 'Popular Searches'),
                      ),
                      PopularSearchItem(),
                      PopularSearchItem(),
                      PopularSearchItem(),
                      PopularSearchItem(),
                      PopularSearchItem(),
                      PopularSearchItem(),
                      PopularSearchItem(),
                      PopularSearchItem(),
                      PopularSearchItem(),
                      PopularSearchItem(),
                      PopularSearchItem(),
                      PopularSearchItem(),
                    ],
                  )),
                ))));
  }
}
