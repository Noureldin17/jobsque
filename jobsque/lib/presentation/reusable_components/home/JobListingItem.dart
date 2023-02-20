import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/data/models/argument_models/job_detail_arguments.dart';
import 'package:sizer/sizer.dart';
import 'package:jobsque/constants/pages.dart' as pages;

import '../../../data/models/job_listing_model.dart';

// ignore: must_be_immutable
class JobListingItem extends StatefulWidget {
  JobListingItem(
      {super.key,
      required this.listing,
      required this.OnSavePressed,
      this.index});

  final Function OnSavePressed;
  int? index;
  bool ItemSaved = false;

  String? activeSaveIconAsset =
      'assets/icons/navbar_icons/archive-minusactive.svg';
  String? saveIconAsset = 'assets/icons/navbar_icons/archive-minus.svg';

  final JobListing listing;

  double? Height(double h) {
    return ((h / 756) * 100).h;
  }

  double? Width(double w) {
    return ((w / 375) * 100).w;
  }

  @override
  State<JobListingItem> createState() => _JobListingItemState();
}

class _JobListingItemState extends State<JobListingItem> {
  @override
  void initState() {
    if (widget.listing.id == 1) print(widget.listing.isSaved);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, pages.Job_Details_Page,
            arguments: JobDetailArguments(
                OnSave: () {
                  widget.OnSavePressed(widget.listing);
                },
                listing: widget.listing));
      },
      child: Container(
        padding: EdgeInsetsDirectional.fromSTEB(
            widget.Width(24)!, widget.Height(22.5)!, widget.Width(24)!, 0),
        child: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  widget.listing.imageAsset,
                  height: widget.Height(40),
                  width: widget.Width(40),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(
                      0, 0, widget.Width(16)!, 0),
                ),
                Expanded(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                      Text(
                        widget.listing.title,
                        style: TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                          color: Color.fromARGB(255, 17, 24, 39),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0, widget.Height(4)!, 0, 0)),
                      Text(
                        '${widget.listing.company} • ${widget.listing.location} ',
                        style: TextStyle(
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          color: Color.fromARGB(255, 55, 65, 81),
                        ),
                      ),
                    ])),
                IconButton(
                    onPressed: () {
                      setState(() {
                        widget.ItemSaved = !widget.ItemSaved;

                        widget.OnSavePressed(widget.listing);
                        // if (widget.listing.isSaved) {
                        //   JobListingsCubit.get(context)
                        //       .unsaveJob(widget.listing.id);
                        // } else {
                        //   JobListingsCubit.get(context)
                        //       .saveJob(widget.listing.id);
                        // }
                      });
                    },
                    icon: SvgPicture.asset(
                      widget.listing.isSaved
                          ? widget.activeSaveIconAsset!
                          : widget.saveIconAsset!,
                      height: widget.Height(40),
                      width: widget.Width(40),
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.centerRight,
                    ))
              ],
            ),
            Padding(
              padding:
                  EdgeInsetsDirectional.fromSTEB(0, widget.Height(18.5)!, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0, 0, widget.Width(8)!, 0),
                      ),
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
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0, 0, widget.Width(8)!, 0),
                      ),
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
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                      text: '\$${widget.listing.monthlySalary}',
                      style: TextStyle(
                          color: Color.fromARGB(255, 46, 142, 24),
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
                    ),
                    TextSpan(
                      text: '/Month',
                      style: TextStyle(
                          color: Color.fromARGB(255, 107, 114, 128),
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w500,
                          fontSize: 12),
                    ),
                  ]))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(
                  widget.Width(0)!, widget.Height(16)!, widget.Width(0)!, 0),
              child: Divider(
                thickness: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
