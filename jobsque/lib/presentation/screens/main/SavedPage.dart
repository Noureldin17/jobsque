import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobsque/data/models/job_listing_model.dart';
import 'package:jobsque/presentation/reusable_components/ListDivider.dart';
import 'package:jobsque/presentation/reusable_components/saved/SavedJobListItem.dart';
import 'package:jobsque/presentation/reusable_components/saved/EmptySavedJobs.dart';
import 'package:sizer/sizer.dart';
import 'package:jobsque/constants/pages.dart' as pages;

import '../../../business_logic/cubit/job_listings_cubit.dart';

// ignore: must_be_immutable
class SavedPage extends StatefulWidget {
  SavedPage({super.key});
  double Height(double h) {
    return ((h / 756) * 100).h;
  }

  double Width(double w) {
    return ((w / 375) * 100).w;
  }

  bool isEmpty = false;
  JobListingsCubit? cubit;
  @override
  State<SavedPage> createState() => _HomePageState();
}

class _HomePageState extends State<SavedPage> {
  List<JobListing> SavedList = [];
  @override
  void initState() {
    widget.cubit = JobListingsCubit.get(context);
    SavedList = widget.cubit!.SavedList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JobListingsCubit, JobListingsState>(
      builder: (context, state) {
        return SafeArea(
            child: Sizer(
                builder: (context, orientation, deviceType) => Scaffold(
                    backgroundColor: Colors.white,
                    body: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: widget.Width(24),
                              top: widget.Height(31.5),
                              right: widget.Width(24),
                              bottom: widget.Height(20)),
                          child: Row(
                            children: [
                              IconButton(
                                  padding: EdgeInsets.all(0),
                                  splashRadius: 20,
                                  constraints: BoxConstraints(
                                      maxHeight: 40, maxWidth: 40),
                                  onPressed: () {
                                    Navigator.pushReplacementNamed(
                                        context, pages.App_Main_Page);
                                  },
                                  icon: SvgPicture.asset(
                                      'assets/icons/arrow-left.svg')),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: widget.Width(115))),
                              Text('Saved',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'SF Pro Display',
                                      color: Color.fromARGB(255, 17, 24, 39)))
                            ],
                          ),
                        ),
                        SavedList.isEmpty
                            ? EmptySavedList()
                            : ListDivider(
                                divText: '${SavedList.length} Saved Jobs'),
                        if (!SavedList.isEmpty)
                          Expanded(
                            child: ListView.builder(
                              itemCount: SavedList.length,
                              itemBuilder: (context, index) {
                                return SavedListItem(
                                  listing: SavedList[index],
                                  OnCancelSave: () {
                                    widget.cubit!
                                        .unsaveJob(SavedList[index].id);
                                    print("unsaved");
                                  },
                                );
                              },
                            ),
                          )
                      ],
                    ))));
      },
    );
  }
}
