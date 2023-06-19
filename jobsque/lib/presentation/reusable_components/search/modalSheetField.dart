import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class ModalSheetField extends StatefulWidget {
  const ModalSheetField(
      {super.key,
      required this.controller,
      required this.preIcon,
      this.suffIcon});

  final TextEditingController controller;
  final String? suffIcon;
  final String preIcon;
  @override
  State<ModalSheetField> createState() => _ModalSheetFieldState();
}

class _ModalSheetFieldState extends State<ModalSheetField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: widget.controller,
        autofocus: false,
        style: TextStyle(
            fontFamily: 'SF Pro Display',
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Color.fromARGB(255, 17, 24, 39)),
        decoration: InputDecoration(
            suffixIcon: widget.suffIcon != null
                ? IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      widget.suffIcon!,
                      color: Color.fromARGB(255, 17, 24, 39),
                    ),
                  )
                : SvgPicture.asset(
                    widget.preIcon,
                    color: Colors.transparent,
                  ),
            prefixIcon: SvgPicture.asset(
              widget.preIcon,
              color: Color.fromARGB(255, 17, 24, 39),
              fit: BoxFit.scaleDown,
              height: 20,
              width: 20,
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide:
                    BorderSide(color: Color.fromARGB(255, 209, 213, 219))),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide:
                    BorderSide(color: Color.fromARGB(255, 209, 213, 219))),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide:
                    BorderSide(color: Color.fromARGB(255, 209, 213, 219)))));
  }
}
