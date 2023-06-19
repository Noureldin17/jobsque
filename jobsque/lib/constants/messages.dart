import 'package:intl/intl.dart';

import '../data/models/messages_model.dart';

final List<Message> messages = [
  Message(
      message:
          "Ok, here I put the google meet link for later this afternoon. I ask for the timeliness, thank you! \nhttps://meet.google.com/dis-sxdu-ave",
      senderId: 2,
      time: DateFormat.jm().format(DateTime.now())),
  Message(
      message: "Of course, I can!",
      senderId: 1,
      time: DateFormat.jm().format(DateTime.now())),
  Message(
      message: "Can we have an interview via google meet call today at 3pm?",
      senderId: 2,
      time: DateFormat.jm().format(DateTime.now())),
  Message(
      message:
          "Hi Melan, thank you for considering me, this is good news for me.",
      senderId: 1,
      time: DateFormat.jm().format(DateTime.now())),
  Message(
      message:
          "Hi Rafif!, I'm Melan the selection team from Twitter. Thank you for applying for a job at our company. We have announced that you are eligible for the interview stage.",
      senderId: 2,
      time: DateFormat.jm().format(DateTime.now())),
];
