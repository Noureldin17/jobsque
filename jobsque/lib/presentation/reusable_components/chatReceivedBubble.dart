import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChatReceivedBubble extends StatelessWidget {
  const ChatReceivedBubble({super.key, required this.TextMessage});
  final String? TextMessage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 26),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          padding: EdgeInsets.all(9),
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 229, 231, 235),
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8))),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                constraints: BoxConstraints(maxWidth: 270),
                child: Text(
                  'Hi Rafif!, I'
                  'm Melan the selection team from Twitter. Thank you for applying for a job at our company. We have announced that you are eligible for the interview stage.',
                  style: TextStyle(
                      fontFamily: 'SF Pro Display',
                      height: 1.4,
                      color: Color.fromARGB(255, 31, 41, 55),
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                constraints: BoxConstraints(maxWidth: 270),
                child: Text(
                  '10.18',
                  style: TextStyle(
                      fontFamily: 'SF Pro Display',
                      color: Color.fromARGB(255, 156, 163, 175),
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
