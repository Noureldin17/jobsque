import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

import '../ModalSheetButton.dart';

class MessagesFilterModal extends StatefulWidget {
  const MessagesFilterModal({super.key});
  double Height(double h) {
    return ((h / 812) * 100).h;
  }

  double Width(double w) {
    return ((w / 375) * 100).w;
  }

  @override
  State<MessagesFilterModal> createState() => _MessagesFilterModalState();
}

class _MessagesFilterModalState extends State<MessagesFilterModal> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 271,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(start: 163, end: 163, top: 12),
            child: Divider(
              thickness: 3,
              color: Color.fromARGB(255, 31, 41, 55),
            ),
          ),
          Padding(
            padding:
                EdgeInsets.only(top: widget.Height(5), left: widget.Width(24)),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Messages Filters',
                style: TextStyle(
                    fontFamily: 'SF Pro Display',
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 17, 24, 39)),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          ModalSheetButton.NoIcon(
            OnPressed: () {},
            Text: 'Unread',
            // iconAsset: 'assets/icons/directbox-notif.svg'
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          ModalSheetButton.NoIcon(
            OnPressed: () {},
            Text: 'Spam',
            // iconAsset: 'assets/export.svg'
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          ModalSheetButton.NoIcon(
            OnPressed: () {},
            Text: 'Archived',
            // iconAsset: 'assets/icons/navbar_icons/archive-minus.svg',
          ),
        ],
      ),
    );
  }
}
