// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:jobsque/business_logic/cubit/job_listings_cubit.dart';
import 'package:jobsque/data/models/job_listing_model.dart';
import 'package:jobsque/presentation/reusable_components/home/JobListingItem.dart';
// import 'package:jobsque/presentation/reusable_components/home/RecentJobItem.dart';
import 'package:jobsque/presentation/reusable_components/home/homeNotificationBanner.dart';
import 'package:jobsque/presentation/reusable_components/home/homePageNameBanner.dart';
import 'package:jobsque/presentation/reusable_components/home/jobCard.dart';
import 'package:sizer/sizer.dart';

import '../../reusable_components/search/AppSearchBar.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});
  JobListingsCubit? cubit;

  double Height(double h) {
    return ((h / 756) * 100).h;
  }

  double Width(double w) {
    return ((w / 375) * 100).w;
  }

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<JobListing> JobList = [];
  @override
  void initState() {
    widget.cubit = JobListingsCubit.get(context);
    JobList = widget.cubit!.JobsList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) => Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: Colors.white,
            body: SafeArea(
                child: SingleChildScrollView(
              child: GestureDetector(
                  onTap: () => FocusScope.of(context).unfocus(),
                  child: Column(
                    children: [
                      HomePageBanner(),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            widget.Width(24),
                            widget.Height(28),
                            widget.Width(24),
                            0),
                        child: AppSearchBar(hasIcon: false),
                      ),
                      NotificationBanner(
                        accepted: true,
                        submitted: false,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            widget.Width(24),
                            widget.Height(20),
                            widget.Width(24),
                            0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Suggested Job',
                              style: TextStyle(
                                  fontFamily: 'SF Pro Display',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 17, 24, 39)),
                            ),
                            Text(
                              'View all',
                              style: TextStyle(
                                  fontFamily: 'SF Pro Display',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 51, 102, 255)),
                            ),
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              widget.Width(24),
                              widget.Height(20),
                              widget.Width(24),
                              0),
                          child: Row(
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    widget.Width(0),
                                    widget.Height(0),
                                    widget.Width(16),
                                    0),
                                child: JobInfoCard(),
                              ),
                              JobInfoCard(),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            widget.Width(24),
                            widget.Height(20),
                            widget.Width(24),
                            0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Recent Job',
                              style: TextStyle(
                                  fontFamily: 'SF Pro Display',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 17, 24, 39)),
                            ),
                            Text(
                              'View all',
                              style: TextStyle(
                                  fontFamily: 'SF Pro Display',
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 51, 102, 255)),
                            ),
                          ],
                        ),
                      ),

                      ...JobList.map((e) => JobListingItem(
                            key: UniqueKey(),
                            listing: e,
                          ))
                      // Expanded(
                      //   child: ListView.builder(
                      //     itemCount: JobList.length,
                      //     itemBuilder: (context, index) {
                      //       return JobListingItem(
                      //           imageAsset: JobList[index].imageAsset,
                      //           title: JobList[index].title,
                      //           level: JobList[index].level,
                      //           type: JobList[index].type,
                      //           workplace: JobList[index].workplace,
                      //           company: JobList[index].company,
                      //           location: JobList[index].location,
                      //           monthlySalary: JobList[index].monthlySalary);
                      //     },
                      //   ),
                      // )
                    ],
                  )),
            ))));
  }
}
