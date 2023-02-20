import 'package:flutter/material.dart';
import 'package:jobsque/presentation/reusable_components/ListDivider.dart';
import 'package:jobsque/presentation/reusable_components/search/SearchNotFoundView.dart';
import 'package:jobsque/presentation/reusable_components/search/SearchResultsAppBar.dart';
import 'package:sizer/sizer.dart';

class SearchResultsPage extends StatefulWidget {
  const SearchResultsPage({super.key});
  double? Height(double h) {
    return ((h / 812) * 100).h;
  }

  double? Width(double w) {
    return ((w / 375) * 100).w;
  }

  final bool searchNotFound = false;
  @override
  State<SearchResultsPage> createState() => _SearchResultsPageState();
}

class _SearchResultsPageState extends State<SearchResultsPage> {
  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) => SafeArea(
            child: Scaffold(
                resizeToAvoidBottomInset: false,
                appBar: SearchResultsAppBar(),
                backgroundColor: Colors.white,
                body: widget.searchNotFound
                    ? SearchNotFound()
                    : SafeArea(
                        child: SingleChildScrollView(
                            child: Column(
                          children: [
                            ListDivider.left(divText: 'Featuring 120+ jobs'),
                            // Row(
                            //   children: [
                            //     Expanded(
                            //       child: Container(
                            //         decoration: BoxDecoration(
                            //             color:
                            //                 Color.fromARGB(255, 244, 244, 245),
                            //             border: Border.all(
                            //                 color: Color.fromARGB(
                            //                     255, 229, 231, 235),
                            //                 width: 1)),
                            //         height: widget.Height(36),
                            //         child: Padding(
                            //           padding: EdgeInsetsDirectional.fromSTEB(
                            //               widget.Width(24)!,
                            //               widget.Height(8)!,
                            //               widget.Width(0)!,
                            //               widget.Height(8)!),
                            //           child: Text(
                            //             'Featuring 120+ jobs',
                            //             style: TextStyle(
                            //                 fontFamily: "SF Pro Display",
                            //                 fontSize: 14,
                            //                 fontWeight: FontWeight.w500,
                            //                 color: Color.fromARGB(
                            //                     255, 107, 114, 128)),
                            //           ),
                            //         ),
                            //       ),
                            //     )
                            //   ],
                            // ),
                            // RecentJobItem(),
                            // RecentJobItem(),
                            // RecentJobItem(),
                            // RecentJobItem(),
                            // RecentJobItem(),
                            // RecentJobItem(),
                            // RecentJobItem(),
                          ],
                        )),
                      ))));
  }
}
