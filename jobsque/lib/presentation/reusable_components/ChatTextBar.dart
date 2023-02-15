import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/presentation/reusable_components/search/AppSearchBar.dart';
import 'package:sizer/sizer.dart';

class ChatTextBar extends StatefulWidget {
  const ChatTextBar({super.key});
  double Height(double h) {
    return ((h / 812) * 100).h;
  }

  double Width(double w) {
    return ((w / 375) * 100).w;
  }

  @override
  State<ChatTextBar> createState() => _ChatTextBarState();
}

class _ChatTextBarState extends State<ChatTextBar> {
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
              icon: SvgPicture.asset(
                'assets/icons/microphone-2.svg',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
