import 'package:bloc/bloc.dart';
import 'package:design/models/Conversation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'events/chat_events.dart';

class ConversationBloc extends Bloc<ChatEvent, List<Conversation>> {

  final List<Conversation> DefaultData = [
    Conversation(user: "Ritesh", chats: [
      Chat(message: "Hello", author: "Ritesh"),
      Chat(message: "hi", author: "Anikesh"),
      Chat(message: "how a u", author: "Ritesh")
    ]),
    Conversation(user: "Gaurav", chats: [
      Chat(message: "Hello", author: "Gaurav"),
      Chat(message: "how a u", author: "Gaurav"),
      Chat(message: "hi", author: "Anikesh")
    ]),
    Conversation(user: "Arpit", chats: [
      Chat(message: "Hello", author: "Arpit"),
      Chat(message: "hi", author: "Anikesh"),
      Chat(message: "how a u", author: "Arpit")
    ]),
  ];

  @override
  get initialState => DefaultData;

//  @override
//  Stream mapEventToState(event) {
//    return null;
//  }

}
