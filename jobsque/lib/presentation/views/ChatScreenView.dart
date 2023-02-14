import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/presentation/reusable_components/chatReceivedBubble.dart';
import 'package:jobsque/presentation/reusable_components/chatSentBubble.dart';
import 'package:sizer/sizer.dart';

class ChatViewScreen extends StatefulWidget {
  const ChatViewScreen({super.key});
  double Height(double h) {
    return ((h / 812) * 100).h;
  }

  double Width(double w) {
    return ((w / 375) * 100).w;
  }

  @override
  State<ChatViewScreen> createState() => _ChatViewScreenState();
}

class _ChatViewScreenState extends State<ChatViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Sizer(
        builder: (context, orientation, deviceType) => SafeArea(
              child: Scaffold(
                backgroundColor: Colors.white,
                body: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: widget.Height(24),
                          left: widget.Width(26),
                          right: widget.Width(26),
                          bottom: widget.Height(15)),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          IconButton(
                              padding: EdgeInsets.all(0),
                              splashRadius: 20,
                              constraints:
                                  BoxConstraints(maxHeight: 40, maxWidth: 40),
                              onPressed: () {},
                              icon: SvgPicture.asset(
                                  'assets/icons/arrow-left.svg')),
                          Container(
                              padding: EdgeInsets.only(
                                  top: widget.Height(5),
                                  left: widget.Width(22),
                                  right: widget.Width(12)),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(100),
                                  child: SvgPicture.asset(
                                    'assets/icons/TwitterLogo.svg',
                                    fit: BoxFit.scaleDown,
                                  ))),
                          Text(
                            'Twitter',
                            style: TextStyle(
                                fontFamily: 'SF Pro Display',
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color.fromARGB(255, 17, 24, 39)),
                          ),
                          Spacer(),
                          IconButton(
                              padding: EdgeInsets.all(0),
                              splashRadius: 20,
                              constraints:
                                  BoxConstraints(maxHeight: 40, maxWidth: 40),
                              onPressed: () {},
                              icon: SvgPicture.asset("assets/icons/more.svg"))
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 3,
                    ),
                    Row(children: <Widget>[
                      Expanded(
                          child: Padding(
                        padding: const EdgeInsets.only(left: 24, right: 20),
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
                    ]),
                    Padding(padding: EdgeInsets.only(top: 25)),
                    ChatReceivedBubble(
                        TextMessage: 'Hi Rafif!, I'
                            'm Melan the selection team from Twitter. Thank you for applying for a job at our company. We have announced that you are eligible for the interview stage.'),
                    Padding(padding: EdgeInsets.only(top: 16)),
                    ChatSentBubble(
                        TextMessage:
                            'Hi Melan, thank you for considering me, this is good news for me.'),
                    Padding(padding: EdgeInsets.only(top: 16)),
                    ChatReceivedBubble(
                        TextMessage:
                            'Can we have an interview via google meet call today at 3pm?'),
                    Padding(padding: EdgeInsets.only(top: 16)),
                    ChatSentBubble(TextMessage: 'Of course, I can!'),
                    Padding(padding: EdgeInsets.only(top: 16)),
                  ],
                ),
              ),
            ));
  }
}
