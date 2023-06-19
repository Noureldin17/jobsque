import 'package:flutter/material.dart';
import 'package:jobsque/constants/pages.dart' as pages;
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/data/models/job_listing_model.dart';
import 'package:jobsque/presentation/reusable_components/job_application/JobApplicationSteps.dart';
import 'package:sizer/sizer.dart';

class AppliedJobsItem extends StatefulWidget {
  const AppliedJobsItem({super.key, required this.listing});
  final JobListing listing;
  @override
  State<AppliedJobsItem> createState() => _AppliedJobsItemState();
}

class _AppliedJobsItemState extends State<AppliedJobsItem> {
  bool ItemSaved = false;
  String? activeSaveIconAsset =
      'assets/icons/navbar_icons/archive-minusactive.svg';
  String? saveIconAsset = 'assets/icons/navbar_icons/archive-minus.svg';
  double Height(double h) {
    return ((h / 756) * 100).h;
  }

  double Width(double w) {
    return ((w / 375) * 100).w;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, pages.Applied_Step_One_Page);
      },
      child: Container(
        padding: EdgeInsetsDirectional.fromSTEB(
            Width(24), Height(22), Width(24), Height(0)),
        child: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  widget.listing.imageAsset,
                  height: Height(40),
                  width: Width(40),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, Width(16), 0),
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
                              0, Height(4), 0, 0)),
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
                        ItemSaved = !ItemSaved;
                      });
                    },
                    icon: SvgPicture.asset(
                      widget.listing.isSaved
                          ? activeSaveIconAsset!
                          : saveIconAsset!,
                      height: Height(40),
                      width: Width(40),
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.centerRight,
                    )),
              ],
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, Height(18.5), 0, 0),
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
                        width: Width(73),
                        height: Height(26),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color.fromARGB(255, 214, 228, 255)),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0, 0, Width(8), 0),
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
                        width: Width(73),
                        height: Height(26),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Color.fromARGB(255, 214, 228, 255)),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0, 0, Width(8), 0),
                      ),
                    ],
                  ),
                  Text(
                    'Posted 2 days ago',
                    style: TextStyle(
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color.fromARGB(255, 55, 65, 81),
                    ),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: Height(12))),
            Container(
              padding: EdgeInsetsDirectional.fromSTEB(
                  Width(12), Height(12), Width(12), Height(12)),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                      width: 1, color: Color.fromARGB(255, 209, 213, 219))),
              constraints:
                  BoxConstraints(maxWidth: Width(327), maxHeight: Height(75)),
              child: JobApplicationSteps.small(
                  stepNumber: widget.listing.applicationStep),
            ),
            Padding(padding: EdgeInsets.only(top: Height(12))),
            Divider(
              thickness: 1,
            )
          ],
        ),
      ),
    );
  }
}
