import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:jobsque/presentation/reusable_components/savedJobListItem.dart';
import 'package:jobsque/presentation/views/EmptySavedJobs.dart';
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
                          left: widget.Width(26),
                          top: widget.Height(31),
                          right: widget.Width(26),
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
                        : Row(
                            children: [
                              Expanded(
                                child: Container(
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 244, 244, 245),
                                      border: Border.all(
                                          color: Color.fromARGB(
                                              255, 229, 231, 235),
                                          width: 1)),
                                  height: widget.Height(36),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        widget.Width(0),
                                        widget.Height(8),
                                        widget.Width(0),
                                        widget.Height(8)),
                                    child: Text(
                                      '12 Job Saved',
                                      style: TextStyle(
                                          fontFamily: "SF Pro Display",
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromARGB(
                                              255, 107, 114, 128)),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
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
