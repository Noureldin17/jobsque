import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:jobsque/business_logic/cubit/messages_cubit.dart';
import 'package:jobsque/data/models/messages_model.dart';
import 'package:jobsque/presentation/reusable_components/messages/ChatDateSplitter.dart';
import 'package:jobsque/presentation/reusable_components/messages/ChatReceivedBubble.dart';
import 'package:jobsque/presentation/reusable_components/messages/ChatScreenModalSheet.dart';
import 'package:jobsque/presentation/reusable_components/messages/ChatSentBubble.dart';
import 'package:jobsque/presentation/reusable_components/messages/ChatTextBar.dart';
import 'package:sizer/sizer.dart';

// ignore: must_be_immutable
class ChatViewScreen extends StatefulWidget {
  ChatViewScreen({super.key});
  double Height(double h) {
    return ((h / 812) * 100).h;
  }

  double Width(double w) {
    return ((w / 375) * 100).w;
  }

  MessagesCubit? cubit;
  @override
  State<ChatViewScreen> createState() => _ChatViewScreenState();
}

class _ChatViewScreenState extends State<ChatViewScreen> {
  List<Message> msgList = [];

  void OnSendPressed(String s) {
    widget.cubit!.InsertMessage(s);
  }

  @override
  void initState() {
    widget.cubit = MessagesCubit.get(context);
    msgList = widget.cubit!.messages;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MessagesCubit, MessagesState>(
      builder: (context, state) {
        return Sizer(
            builder: (context, orientation, deviceType) => SafeArea(
                  child: Scaffold(
                    resizeToAvoidBottomInset: true,
                    backgroundColor: Colors.white,
                    body: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: widget.Height(20),
                              left: widget.Width(26),
                              right: widget.Width(26),
                              bottom: widget.Height(10)),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              IconButton(
                                  padding: EdgeInsets.all(0),
                                  splashRadius: 20,
                                  constraints: BoxConstraints(
                                      maxHeight: 40, maxWidth: 40),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: SvgPicture.asset(
                                      'assets/icons/arrow-left.svg')),

                              Padding(
                                padding: EdgeInsets.only(
                                    left: widget.Width(22.5),
                                    right: widget.Width(12)),
                                child: CircleAvatar(
                                  radius: 18,
                                  backgroundImage:
                                      AssetImage('assets/twitter4.png'),
                                ),
                              ),
                              // Container(
                              //     padding: EdgeInsets.only(
                              //         top: widget.Height(5),
                              //         left: widget.Width(22),
                              //         right: widget.Width(12)),
                              //     child: ClipRRect(
                              //         borderRadius: BorderRadius.circular(100),
                              //         child: Image.asset(
                              //           'assets/image31.png',
                              //           fit: BoxFit.scaleDown,
                              //         ))),
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
                                  constraints: BoxConstraints(
                                      maxHeight: 40, maxWidth: 40),
                                  onPressed: () {
                                    showModalBottomSheet(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(30),
                                        topRight: Radius.circular(30),
                                      )),
                                      isScrollControlled: true,
                                      context: context,
                                      builder: (context) {
                                        return ChatScreenModalSheet();
                                      },
                                    );
                                  },
                                  icon:
                                      SvgPicture.asset("assets/icons/more.svg"))
                            ],
                          ),
                        ),
                        Divider(
                          thickness: 1.4,
                        ),
                        ChatDateSplitter(),
                        // Padding(padding: EdgeInsets.only(top: 25)),
                        Expanded(
                          child: ListView.builder(
                            reverse: true,
                            scrollDirection: Axis.vertical,
                            itemCount: msgList.length,
                            itemBuilder: (context, index) {
                              if (msgList[index].senderId == 1) {
                                return ChatSentBubble(
                                  TextMessage: msgList[index].message,
                                  Time: msgList[index].time,
                                );
                              } else {
                                return ChatReceivedBubble(
                                  TextMessage: msgList[index].message,
                                  Time: msgList[index].time,
                                );
                              }
                            },
                          ),
                        ),

                        Container(
                            child: Padding(
                          padding: EdgeInsets.only(bottom: 10, top: 5),
                          child: ChatTextBar(OnSendPressed: OnSendPressed),
                        ))
                      ],
                    ),
                  ),
                ));
      },
    );
  }
}
