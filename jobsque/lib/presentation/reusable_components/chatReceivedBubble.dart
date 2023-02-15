import 'package:flutter/material.dart';

class ChatReceivedBubble extends StatelessWidget {
  const ChatReceivedBubble({super.key, required this.TextMessage});
  final String TextMessage;
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
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                constraints: BoxConstraints(maxWidth: 270),
                child: Text(
                  TextMessage,
                  style: TextStyle(
                      height: 1.3,
                      fontFamily: 'SF Pro Display',
                      color: Color.fromARGB(255, 31, 41, 55),
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
              ),
              Text(
                '10.18',
                textAlign: TextAlign.end,
                style: TextStyle(
                    fontFamily: 'SF Pro Display',
                    color: Color.fromARGB(255, 156, 163, 175),
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
