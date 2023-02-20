import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:jobsque/data/models/messages_model.dart';
import 'package:meta/meta.dart';
import '../../constants/messages.dart' as m;
part 'messages_state.dart';

class MessagesCubit extends Cubit<MessagesState> {
  MessagesCubit() : super(MessagesInitial());

  static MessagesCubit get(context) => BlocProvider.of<MessagesCubit>(context);
  List<Message> messages = m.messages;

  void InsertMessage(String message) {
    messages.insert(
        0,
        Message(
            message: message,
            senderId: 1,
            time: DateFormat.jm().format(DateTime.now())));
    emit(MessageInserted());
  }
}
