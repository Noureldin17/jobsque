// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:jobsque/business_logic/cubit/job_listings_cubit.dart';
import 'package:jobsque/presentation/reusable_components/TabsWidget.dart';
import 'package:jobsque/presentation/reusable_components/profile/ProfileBar.dart';
import 'package:jobsque/presentation/views/AppliedJobsRejectedView.dart';
import 'package:jobsque/presentation/views/AppliedJobsView.dart';
import 'package:sizer/sizer.dart';
import 'package:jobsque/constants/pages.dart' as pages;

class AppliedPage extends StatefulWidget {
  AppliedPage({super.key});
  TabController? tabController;
  JobListingsCubit? cubit;
  @override
  State<AppliedPage> createState() => _HomePageState();
}

class _HomePageState extends State<AppliedPage> with TickerProviderStateMixin {
  @override
  void initState() {
    widget.cubit = JobListingsCubit.get(context);
    widget.tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  double Height(double h) {
    return ((h / 756) * 100).h;
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
                body: Column(
                  children: [
                    ProfileBar.noIcon(
                        BarTitle: 'Applied Job',
                        OnBackPressed: () {
                          Navigator.pushReplacementNamed(
                              context, pages.App_Main_Page);
                        }),
                    Padding(
                      padding:
                          EdgeInsets.only(top: Height(35), bottom: Height(27)),
                      child: TabsWidget(
                        tabs: [
                          Tab(
                            text: 'Active',
                          ),
                          Tab(
                            text: 'Rejected',
                          ),
                        ],
                        tabController: widget.tabController,
                      ),
                    ),
                    Expanded(
                        child: TabBarView(
                      controller: widget.tabController,
                      children: [
                        AppliedJobsView(
                          list: widget.cubit!.AppliedList,
                        ),
                        AppliedJobsRejected(),
                      ],
                    ))
                  ],
                ))));
  }
}
