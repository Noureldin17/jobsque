import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobsque/presentation/reusable_components/appSearchBar.dart';
import 'package:jobsque/presentation/reusable_components/popularSearchItem.dart';
import 'package:jobsque/presentation/reusable_components/recentSearchItem.dart';
import 'package:jobsque/presentation/reusable_components/searchAppBar.dart';
import 'package:sizer/sizer.dart';

class JobSearchPage extends StatefulWidget {
  const JobSearchPage({super.key});
  double? Height(double h) {
    return ((h / 756) * 100).h;
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
    return SafeArea(
        child: Scaffold(
            appBar: SearchAppBar(),
            backgroundColor: Colors.white,
            body: SafeArea(
              child: SingleChildScrollView(
                  child: Column(
                children: [
                  // Padding(
                  //   padding: EdgeInsetsDirectional.fromSTEB(
                  //       widget.Width(26)!,
                  //       widget.Height(24)!,
                  //       widget.Width(24)!,
                  //       widget.Height(22)!),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       SvgPicture.asset(
                  //         'assets/icons/arrow-left.svg',
                  //         fit: BoxFit.scaleDown,
                  //         color: Color.fromARGB(255, 41, 45, 50),
                  //       ),
                  //       Padding(
                  //         padding: EdgeInsetsDirectional.fromSTEB(
                  //             0, 0, widget.Width(15)!, 0),
                  //       ),
                  //       Expanded(child: AppSearchBar())
                  //     ],
                  //   ),
                  // ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 244, 244, 245),
                              border: Border.all(
                                  color: Color.fromARGB(255, 229, 231, 235),
                                  width: 1)),
                          height: widget.Height(36),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                widget.Width(24)!,
                                widget.Height(8)!,
                                widget.Width(0)!,
                                widget.Height(8)!),
                            child: Text(
                              'Recent searches',
                              style: TextStyle(
                                  fontFamily: "SF Pro Display",
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 107, 114, 128)),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
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
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 244, 244, 245),
                                border: Border.all(
                                    color: Color.fromARGB(255, 229, 231, 235),
                                    width: 1)),
                            height: widget.Height(36),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  widget.Width(24)!,
                                  widget.Height(8)!,
                                  widget.Width(0)!,
                                  widget.Height(8)!),
                              child: Text(
                                'Popular searches',
                                style: TextStyle(
                                    fontFamily: "SF Pro Display",
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 107, 114, 128)),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
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
            )));
  }
}
