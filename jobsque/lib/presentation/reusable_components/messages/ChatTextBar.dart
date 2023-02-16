import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class ChatTextBar extends StatefulWidget {
  ChatTextBar({super.key});
  double Height(double h) {
    return ((h / 812) * 100).h;
  }

  TextEditingController? controller;
  double Width(double w) {
    return ((w / 375) * 100).w;
  }

  bool isEmpty = true;

  @override
  State<ChatTextBar> createState() => _ChatTextBarState();
}

class _ChatTextBarState extends State<ChatTextBar> {
  @override
  void initState() {
    widget.controller = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(
              widget.Width(10), 0, widget.Width(5), 0),
          child: Container(
            width: (48 / 375) * MediaQuery.of(context).size.width,
            height: (48 / 812) * MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Color(0xFFAFAFA),
              shape: BoxShape.circle,
              border: Border.all(color: Color.fromARGB(255, 209, 213, 219)),
            ),
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/paperclip-2.svg',
                // fit: BoxFit.scaleDown,
              ),
            ),
          ),
        ),
        Expanded(
            child: TextFormField(
          onChanged: (value) {
            if (widget.controller!.text.isNotEmpty) {
              setState(() {
                widget.isEmpty = false;
              });
            } else {
              setState(() {
                widget.isEmpty = true;
              });
            }
          },
          controller: widget.controller,
          onTap: () {},
          autofocus: false,
          decoration: InputDecoration(
              isDense: true,
              hintText: 'Write a message...',
              hintStyle: TextStyle(
                  color: Color.fromARGB(255, 156, 163, 175),
                  fontFamily: 'SF Pro Display',
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFD1D5DB),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(100)),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFD1D5DB),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(100)),
              disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFD1D5DB),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(100)),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Color(0xFFD1D5DB),
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(100))),
        )),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(
              widget.Width(5), 0, widget.Width(10), 0),
          child: Container(
            width: (48 / 375) * MediaQuery.of(context).size.width,
            height: (48 / 812) * MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              color: Color(0xFFAFAFA),
              shape: BoxShape.circle,
              border: Border.all(color: Color.fromARGB(255, 209, 213, 219)),
            ),
            child: IconButton(
              onPressed: () {},
              icon: widget.isEmpty
                  ? SvgPicture.asset(
                      'assets/icons/microphone-2.svg',
                    )
                  : SvgPicture.asset(
                      'assets/icons/send.svg',
                    ),
            ),
          ),
        ),
      ],
    );
  }
}
