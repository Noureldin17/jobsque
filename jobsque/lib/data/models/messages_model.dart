import 'package:intl/intl.dart';

class Message {
  final String message;
  final String time;
  final int senderId;

  const Message({
    required this.message,
    required this.senderId,
    required this.time,
  });
}
