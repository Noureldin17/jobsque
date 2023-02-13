import 'package:flutter/material.dart';

// ignore: must_be_immutable
class JobTypeFilterSelection extends StatefulWidget {
  JobTypeFilterSelection({super.key, required this.JobType});
  final String JobType;

  Color selectedColor = Color.fromARGB(255, 214, 228, 255);
  Color unselectedColor = Color.fromARGB(255, 250, 250, 250);
  Color BorderselectedColor = Color.fromARGB(255, 51, 102, 255);
  Color BorderunselectedColor = Color.fromARGB(255, 229, 231, 235);

  bool selected = false;
  @override
  State<JobTypeFilterSelection> createState() => _JobTypeFilterSelectionState();
}

class _JobTypeFilterSelectionState extends State<JobTypeFilterSelection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(0, 16, 10, 0),
        child: GestureDetector(
          onTap: () {
            setState(() {
              widget.selected = !widget.selected;
            });
          },
          child: Container(
              constraints: BoxConstraints(maxWidth: 200, minWidth: 64),
              height: 34,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  border: Border.all(
                      color: widget.selected
                          ? widget.BorderselectedColor
                          : widget.BorderunselectedColor),
                  color: widget.selected
                      ? widget.selectedColor
                      : widget.unselectedColor),
              child: Center(
                heightFactor: 1,
                widthFactor: 1,
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 8, 20, 8),
                  child: Text(
                    widget.JobType,
                    style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: widget.selected
                            ? widget.BorderselectedColor
                            : Color.fromARGB(255, 17, 24, 39)),
                  ),
                ),
              )),
        ));
  }
}
