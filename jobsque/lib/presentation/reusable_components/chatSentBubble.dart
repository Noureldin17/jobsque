import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatSentBubble extends StatelessWidget {
  const ChatSentBubble({super.key, required this.TextMessage});
  final String TextMessage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 26),
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.all(9),
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 51, 102, 255),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
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
                      fontFamily: 'SF Pro Display',
                      height: 1.3,
                      color: Color.fromARGB(255, 244, 244, 245),
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
              ),
              Text(
                '10.18',
                textAlign: TextAlign.end,
                style: TextStyle(
                    fontFamily: 'SF Pro Display',
                    color: Color.fromARGB(255, 229, 231, 235),
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
