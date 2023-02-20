import 'package:flutter/material.dart';

import '../ModalSheetButton.dart';

class ChatScreenModalSheet extends StatefulWidget {
  const ChatScreenModalSheet({super.key});

  @override
  State<ChatScreenModalSheet> createState() => _ChatScreenModalSheetState();
}

class _ChatScreenModalSheetState extends State<ChatScreenModalSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 471,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsetsDirectional.only(start: 163, end: 163, top: 12),
            child: Divider(
              thickness: 3,
              color: Color.fromARGB(255, 31, 41, 55),
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          ModalSheetButton(
              OnPressed: () {},
              Text: 'Visit job post',
              iconAsset: 'assets/icons/navbar_icons/briefcase.svg'),
          Padding(padding: EdgeInsets.only(top: 15)),
          ModalSheetButton(
              OnPressed: () {},
              Text: 'View my application',
              iconAsset: 'assets/icons/note.svg'),
          Padding(padding: EdgeInsets.only(top: 15)),
          ModalSheetButton(
            OnPressed: () {},
            Text: 'Mark as unread',
            iconAsset: 'assets/icons/sms.svg',
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          ModalSheetButton(
            OnPressed: () {},
            Text: 'Mute',
            iconAsset: 'assets/icons/notification.svg',
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          ModalSheetButton(
            OnPressed: () {},
            Text: 'Archive',
            iconAsset: 'assets/icons/import.svg',
          ),
          Padding(padding: EdgeInsets.only(top: 15)),
          ModalSheetButton(
            OnPressed: () {},
            Text: 'Delete conversation',
            iconAsset: 'assets/icons/trash.svg',
          ),
        ],
      ),
    );
  }
}
