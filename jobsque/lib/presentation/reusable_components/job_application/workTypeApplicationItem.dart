import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WorkTypeSelection extends StatefulWidget {
  WorkTypeSelection(
      {super.key,
      required this.value,
      required this.GroupValue,
      required this.OnSelectionChange});
  final Function OnSelectionChange;
  final int value;
  final int GroupValue;
  @override
  State<WorkTypeSelection> createState() => _WorkTypeSelectionState();
}

class _WorkTypeSelectionState extends State<WorkTypeSelection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, right: 0),
      child: Container(
        height: 81,
        width: 339,
        decoration: BoxDecoration(
            color: widget.value == widget.GroupValue
                ? Color.fromARGB(255, 214, 228, 255)
                : Colors.white,
            border: Border.all(
                width: 1,
                color: widget.value == widget.GroupValue
                    ? Color.fromARGB(255, 51, 102, 255)
                    : Color.fromARGB(255, 209, 213, 219)),
            borderRadius: BorderRadius.circular(8)),
        child: RadioListTile(
          // toggleable: true,
          contentPadding:
              const EdgeInsets.only(left: 16, top: 14, bottom: 16, right: 12),
          controlAffinity: ListTileControlAffinity.trailing,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          groupValue: widget.GroupValue,
          value: widget.value,
          onChanged: (value) {
            widget.OnSelectionChange(value);
          },
          title: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Senior UX Designer',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'SF Pro Display',
                          color: Color.fromARGB(255, 17, 24, 39)),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Text(
                      'CV.pdf • Portfolio.pdf',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          fontFamily: 'SF Pro Display',
                          color: Color.fromARGB(255, 107, 114, 128)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
