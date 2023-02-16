import 'package:flutter/material.dart';

class ChatDateSplitter extends StatelessWidget {
  const ChatDateSplitter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
          child: Padding(
        padding: const EdgeInsets.only(left: 24, right: 20, top: 10),
        child: Divider(
          thickness: 1,
        ),
      )),
      Text("Today,  Nov 13",
          style: TextStyle(
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w500,
              fontSize: 12,
              color: Color.fromARGB(255, 156, 163, 175))),
      Expanded(
          child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 24),
        child: Divider(
          thickness: 1,
        ),
      )),
    ]);
  }
}
