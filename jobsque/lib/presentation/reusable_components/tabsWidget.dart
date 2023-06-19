import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class TabsWidget extends StatefulWidget {
  TabsWidget(
      {super.key,
      required this.tabs,
      required this.tabController,
      this.TabViewWidgets});
  double Height(double h) {
    return ((h / 812) * 100).h;
  }

  double Width(double w) {
    return ((w / 375) * 100).w;
  }

  final List<Widget>? TabViewWidgets;
  final List<Tab>? tabs;
  TabController? tabController;
  @override
  State<TabsWidget> createState() => _TabsWidgetState();
}

class _TabsWidgetState extends State<TabsWidget> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: widget.Width(327),
            height: widget.Height(46),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Color.fromARGB(255, 244, 244, 245)),
            child: TabBar(
              unselectedLabelColor: Color.fromARGB(255, 107, 114, 128),
              labelStyle: TextStyle(
                  color: Colors.white,
                  fontFamily: 'SF Pro Display',
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Color.fromARGB(255, 9, 26, 122)),
              controller: widget.tabController!,
              tabs: [...widget.tabs!],
            )),
      ],
    );
  }
}
