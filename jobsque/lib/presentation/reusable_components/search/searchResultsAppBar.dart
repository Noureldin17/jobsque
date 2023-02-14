import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobsque/presentation/reusable_components/search/CustomModalBottomSheet.dart';
import 'package:jobsque/presentation/reusable_components/search/SearchFilterItem.dart';
import 'package:sizer/sizer.dart';

import './AppSearchBar.dart';

class SearchResultsAppBar extends StatefulWidget
    implements PreferredSizeWidget {
  const SearchResultsAppBar({super.key});
  double? Height(double h) {
    return ((h / 812) * 100).h;
  }

  double? Width(double w) {
    return ((w / 375) * 100).w;
  }

  @override
  State<SearchResultsAppBar> createState() => _SearchResultsAppBarState();

  @override
  Size get preferredSize => Size(double.infinity, Height(159)!);
}

class _SearchResultsAppBarState extends State<SearchResultsAppBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(widget.Width(0)!,
          widget.Height(24)!, widget.Width(0)!, widget.Height(18)!),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(widget.Width(24)!,
                widget.Height(0)!, widget.Width(24)!, widget.Height(0)!),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    padding: EdgeInsets.all(0),
                    splashRadius: 20,
                    constraints: BoxConstraints(maxHeight: 20, maxWidth: 20),
                    onPressed: () {},
                    icon: SvgPicture.asset('assets/icons/arrow-left.svg')),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(
                      0, 0, widget.Width(15)!, 0),
                ),
                Expanded(
                    child: AppSearchBar(
                  hasIcon: true,
                )),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(
                widget.Width(0)!, widget.Height(22)!, 0, 0),
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            widget.Width(24)!,
                            widget.Height(8)!,
                            widget.Width(18)!,
                            widget.Height(8)!),
                        child: IconButton(
                            padding: EdgeInsets.all(0),
                            splashRadius: 20,
                            constraints:
                                BoxConstraints(maxHeight: 20, maxWidth: 20),
                            onPressed: () {
                              showModalBottomSheet(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(30),
                                          topRight: Radius.circular(30))),
                                  isScrollControlled: true,
                                  enableDrag: true,
                                  context: context,
                                  builder: (context) => CustomModalSheet());
                            },
                            icon: SvgPicture.asset(
                              'assets/icons/setting-4.svg',
                              width: widget.Width(24),
                              height: widget.Height(24),
                            ))),
                    Row(
                      children: [
                        SearchFilterItem(filterText: 'Onsite'),
                        SearchFilterItem(filterText: 'Fulltime'),
                        SearchFilterItem(
                          filterText: 'Post Date',
                        ),
                        SearchFilterItem(
                          filterText: 'Salary',
                        ),
                      ],
                    ),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
