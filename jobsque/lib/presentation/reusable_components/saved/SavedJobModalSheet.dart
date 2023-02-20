import 'package:flutter/material.dart';

import 'package:jobsque/presentation/reusable_components/ModalSheetButton.dart';

class SavedJobModalSheet extends StatefulWidget {
  const SavedJobModalSheet({super.key, required this.OnCancelSaved});
  final Function OnCancelSaved;
  @override
  State<SavedJobModalSheet> createState() => _SavedJobModalSheetState();
}

class _SavedJobModalSheetState extends State<SavedJobModalSheet> {
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
          Padding(padding: EdgeInsets.only(top: 15)),
          ModalSheetButton(
              OnPressed: () {},
              Text: 'Apply Job',
              iconAsset: 'assets/icons/directbox-notif.svg'),
          Padding(padding: EdgeInsets.only(top: 15)),
          ModalSheetButton(
              OnPressed: () {},
              Text: 'Share via...',
              iconAsset: 'assets/export.svg'),
          Padding(padding: EdgeInsets.only(top: 15)),
          ModalSheetButton(
            OnPressed: widget.OnCancelSaved,
            Text: 'Cancel save',
            iconAsset: 'assets/icons/navbar_icons/archive-minus.svg',
          ),
        ],
      ),
    );
  }
}
