import 'package:flutter/material.dart';
import 'package:jobsque/constants/pages.dart' as pages;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/data/models/job_listing_model.dart';
import 'package:jobsque/presentation/reusable_components/PrimaryButton.dart';
import 'package:jobsque/presentation/reusable_components/TabsWidget.dart';
import 'package:jobsque/presentation/views/JobCompanyView.dart';
import 'package:jobsque/presentation/views/JobDescriptionView.dart';
import 'package:jobsque/presentation/views/JobPeopleView.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class JobDetailPage extends StatefulWidget {
  JobDetailPage({super.key, required this.listing});

  // final String ImageAsset;
  final JobListing listing;
  double Height(double h) {
    return ((h / 812) * 100).h;
  }

  double Width(double w) {
    return ((w / 375) * 100).w;
  }

  TabController? tabController;
  bool? isSaved = false;
  @override
  State<JobDetailPage> createState() => _JobDetailPageState();
}

class _JobDetailPageState extends State<JobDetailPage>
    with TickerProviderStateMixin {
  @override
  void initState() {
    widget.tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) => SafeArea(
                child: Scaffold(
              backgroundColor: Colors.white,
              body: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: widget.Height(26),
                        left: widget.Width(26),
                        right: widget.Width(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            padding: EdgeInsets.all(0),
                            splashRadius: 20,
                            constraints:
                                BoxConstraints(maxHeight: 40, maxWidth: 40),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: SvgPicture.asset(
                              'assets/icons/arrow-left.svg',
                            )),
                        Text(
                          'Job Detail',
                          style: TextStyle(
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w500,
                            color: Color.fromARGB(255, 17, 24, 39),
                            fontSize: 24,
                          ),
                        ),
                        IconButton(
                            onPressed: (() {
                              setState(() {
                                widget.isSaved = !widget.isSaved!;
                              });
                            }),
                            icon: widget.isSaved!
                                ? SvgPicture.asset(
                                    'assets/icons/navbar_icons/archive-minusactive.svg')
                                : SvgPicture.asset(
                                    'assets/icons/navbar_icons/archive-minus.svg'))
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: widget.Height(30)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            SvgPicture.asset(
                              widget.listing.imageAsset,
                              width: widget.Width(48),
                              height: widget.Width(48),
                            ),
                            Padding(
                                padding:
                                    EdgeInsets.only(top: widget.Height(12))),
                            Text(
                              widget.listing.title,
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: 'SF Pro Display',
                                  color: Color.fromARGB(255, 17, 24, 39)),
                            ),
                            Padding(
                                padding:
                                    EdgeInsets.only(top: widget.Height(4))),
                            Text(
                              '${widget.listing.company} • ${widget.listing.location} ',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'SF Pro Display',
                                  color: Color.fromARGB(255, 55, 65, 81)),
                            ),
                            Padding(
                                padding:
                                    EdgeInsets.only(top: widget.Height(16))),
                          ],
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Center(
                          child: Text(
                            widget.listing.type,
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color.fromARGB(255, 51, 102, 255),
                            ),
                          ),
                        ),
                        width: widget.Width(73),
                        height: widget.Height(26),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color.fromARGB(255, 214, 228, 255)),
                      ),
                      Padding(padding: EdgeInsets.only(left: widget.Width(8))),
                      Container(
                        child: Center(
                          child: Text(
                            widget.listing.workplace,
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color.fromARGB(255, 51, 102, 255),
                            ),
                          ),
                        ),
                        width: widget.Width(73),
                        height: widget.Height(26),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color.fromARGB(255, 214, 228, 255)),
                      ),
                      Padding(padding: EdgeInsets.only(left: widget.Width(8))),
                      Container(
                        child: Center(
                          child: Text(
                            widget.listing.level,
                            style: TextStyle(
                              fontFamily: 'SF Pro Display',
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: Color.fromARGB(255, 51, 102, 255),
                            ),
                          ),
                        ),
                        width: widget.Width(73),
                        height: widget.Height(26),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color.fromARGB(255, 214, 228, 255)),
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: widget.Height(35))),
                  TabsWidget(tabs: [
                    Tab(text: 'Description'),
                    Tab(text: 'Company'),
                    Tab(text: 'People'),
                  ], tabController: widget.tabController),
                  Expanded(
                      child: TabBarView(
                          controller: widget.tabController,
                          children: [
                        JobDescriptionTabView(),
                        JobCompanyTabView(),
                        JobPeopleTabView(),
                      ])),
                  Padding(
                    padding: EdgeInsets.only(bottom: widget.Height(20)),
                    child: PrimaryButton(
                        buttonText: 'Apply',
                        OnPrimaryButtonPressed: () {
                          Navigator.pushNamed(
                              context, pages.Job_Application_Step_One);
                        }),
                  )
                ],
              ),
            )));
  }
}
