import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/presentation/reusable_components/primaryButton.dart';
import 'package:jobsque/presentation/reusable_components/search/jobTypeFilterSelection.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class SearchFilterItem extends StatefulWidget {
  SearchFilterItem({super.key, required this.filterText});

  final String filterText;

  double? Height(double h) {
    return ((h / 756) * 100).h;
  }

  double? Width(double w) {
    return ((w / 375) * 100).w;
  }

  bool? isSelected = false;

  @override
  State<SearchFilterItem> createState() => _SearchFilterItemState();
}

class _SearchFilterItemState extends State<SearchFilterItem> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(
          widget.Width(0)!, 0, widget.Width(8)!, 0),
      child: GestureDetector(
          onTap: () {
            showModalBottomSheet(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                isScrollControlled: true,
                context: context,
                builder: (context) => Container(
                      height: 240,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.only(
                                start: 163, end: 163, top: 12),
                            child: Divider(
                              thickness: 3,
                              color: Color.fromARGB(255, 31, 41, 55),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                top: widget.Height(20)!,
                                bottom: widget.Height(15)!),
                            child: Text(
                              'On-Site/Remote',
                              style: TextStyle(
                                  fontFamily: 'SF Pro Display',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: widget.Width(20)!,
                                right: widget.Width(20)!,
                                bottom: widget.Height(30)!),
                            child: Row(
                              children: [
                                JobTypeFilterSelection(JobType: 'Remote'),
                                JobTypeFilterSelection(JobType: 'Onsite'),
                                JobTypeFilterSelection(JobType: 'Hybrid'),
                                JobTypeFilterSelection(JobType: 'Any'),
                              ],
                            ),
                          ),
                          PrimaryButton(
                              buttonText: 'Show Result',
                              OnPrimaryButtonPressed: () {})
                        ],
                      ),
                    ));
          },
          child: Container(
            constraints: BoxConstraints(maxWidth: 130, minWidth: 88),
            padding: EdgeInsetsDirectional.fromSTEB(
                widget.Width(17)!, 0, widget.Width(8)!, 0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  widget.filterText,
                  style: TextStyle(
                    fontFamily: 'SF Pro Display',
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: widget.isSelected!
                        ? Colors.white
                        : Color.fromARGB(255, 107, 114, 128),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SvgPicture.asset(
                    'assets/icons/arrow-down.svg',
                    color: widget.isSelected!
                        ? Colors.white
                        : Color.fromARGB(255, 107, 114, 128),
                  ),
                )
              ],
            ),
            // width: widget.Width(88),
            height: widget.Height(32),
            decoration: BoxDecoration(
                border: Border.all(
                    color: Color.fromARGB(255, 209, 213, 219), width: 1),
                borderRadius: BorderRadius.circular(100),
                color: !widget.isSelected!
                    ? Colors.white
                    : Color.fromARGB(255, 9, 26, 122)),
          )),
    );
  }
}
