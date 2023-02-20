import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/data/models/job_listing_model.dart';
import 'package:jobsque/presentation/reusable_components/saved/SavedJobModalSheet.dart';
import 'package:sizer/sizer.dart';

class SavedListItem extends StatefulWidget {
  const SavedListItem(
      {super.key, required this.listing, required this.OnCancelSave});

  final JobListing listing;
  final Function OnCancelSave;

  double? Height(double h) {
    return ((h / 756) * 100).h;
  }

  double? Width(double w) {
    return ((w / 375) * 100).w;
  }

  @override
  State<SavedListItem> createState() => _SavedListItemState();
}

class _SavedListItemState extends State<SavedListItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
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
                      showModalBottomSheet(
                        isScrollControlled: true,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        )),
                        context: context,
                        builder: (context) {
                          return SavedJobModalSheet(OnCancelSaved: () {
                            widget.OnCancelSave();
                            Navigator.pop(context);
                          });
                        },
                      );
                    },
                    icon: SvgPicture.asset(
                      'assets/icons/more.svg',
                      height: widget.Height(40),
                      width: widget.Width(40),
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.centerRight,
                    )),
              ],
            ),
            Padding(
              padding:
                  EdgeInsetsDirectional.fromSTEB(0, widget.Height(18.5)!, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Posted 2 days ago',
                    style: TextStyle(
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: Color.fromARGB(255, 55, 65, 81),
                    ),
                  ),
                  // Spacer(),
                  Row(
                    children: [
                      SvgPicture.asset('assets/icons/green-clock.svg'),
                      Padding(
                        padding: const EdgeInsets.only(left: 7),
                        child: Text(
                          'Be an early applicant',
                          style: TextStyle(
                            fontFamily: 'SF Pro Display',
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                            color: Color.fromARGB(255, 55, 65, 81),
                          ),
                        ),
                      ),
                    ],
                  )
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
