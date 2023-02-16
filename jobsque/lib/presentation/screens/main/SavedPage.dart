import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobsque/presentation/reusable_components/ListDivider.dart';
import 'package:jobsque/presentation/reusable_components/saved/SavedJobListItem.dart';
import 'package:jobsque/presentation/reusable_components/saved/EmptySavedJobs.dart';
import 'package:sizer/sizer.dart';

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
  @override
  State<SavedPage> createState() => _HomePageState();
}

class _HomePageState extends State<SavedPage> {
  @override
  Widget build(BuildContext context) {
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
                              constraints:
                                  BoxConstraints(maxHeight: 40, maxWidth: 40),
                              onPressed: () {},
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
                    widget.isEmpty
                        ? EmptySavedList()
                        : ListDivider(divText: '12 Saved Jobs'),
                    if (!widget.isEmpty)
                      Expanded(
                        child: ListView.builder(
                          itemCount: 8,
                          itemBuilder: (context, index) {
                            return SavedListItem();
                          },
                        ),
                      )
                  ],
                ))));
  }
}
