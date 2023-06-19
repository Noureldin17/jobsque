import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

class LanguageSelection extends StatefulWidget {
  const LanguageSelection(
      {super.key,
      required this.Language,
      required this.LanguageFlag,
      required this.GroupValue,
      required this.value,
      required this.OnSelectionChanged});

  final String LanguageFlag;
  final String Language;
  final Function OnSelectionChanged;
  final String GroupValue;
  final String value;

  double Height(double h) {
    return ((h / 812) * 100).h;
  }

  double Width(double w) {
    return ((w / 375) * 100).w;
  }

  @override
  State<LanguageSelection> createState() => _LanguageSelectionState();
}

class _LanguageSelectionState extends State<LanguageSelection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: RadioListTile(
            controlAffinity: ListTileControlAffinity.trailing,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            groupValue: widget.GroupValue,
            value: widget.value,
            onChanged: (value) {
              widget.OnSelectionChanged(value);
            },
            title: Container(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        right: widget.Width(12), left: widget.Width(10)),
                    child: Image.asset(
                      widget.LanguageFlag,
                      width: widget.Width(30),
                      height: widget.Height(20),
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  Text(
                    widget.Language,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'SF Pro Display',
                        color: Color.fromARGB(255, 17, 24, 39)),
                  ),
                  Padding(padding: EdgeInsets.only(top: 10)),
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: widget.Width(24)),
          child: Divider(
            thickness: 1,
          ),
        ),
      ],
    );
  }
}
