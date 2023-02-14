import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChatSentBubble extends StatelessWidget {
  const ChatSentBubble({super.key, required this.TextMessage});
  final String? TextMessage;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24),
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          constraints: BoxConstraints(maxWidth: 272),
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 51, 102, 255),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8))),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Flexible(
                child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    TextMessage!,
                    style: TextStyle(
                        height: 1.2,
                        fontFamily: 'SF Pro Display',
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    '10.18',
                    style: TextStyle(
                        fontFamily: 'SF Pro Display',
                        color: Color.fromARGB(255, 229, 231, 235),
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ],
            )),
          ),
        ),
      ),
    );
  }
}
