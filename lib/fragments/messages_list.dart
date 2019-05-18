import 'package:design/models/Conversation.dart';
import 'package:design/ui/message.dart';
import 'package:flutter/material.dart';

class MessageList extends StatefulWidget {

  List<Chat> messages;

  MessageList(this.messages);

  @override
  _MessageListState createState() => _MessageListState(messages);
}

class _MessageListState extends State<MessageList> {

  List<Chat> messages;


  _MessageListState(this.messages);

  @override
  void initState() {
    super.initState();

//    for(var i = 0; i<= 100; i++) {
//      messages.add(Chat(message: "${i} Hello", author: "Anikesh"));
//    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: messages.length,
        reverse: true,
        itemBuilder: (BuildContext context, int index) {
          return MessageView(messages[index]);
        },
      ),
    );
  }
}

// widget.messages.map((msg) => ListTile(title: Text(msg.message),)).toList()

