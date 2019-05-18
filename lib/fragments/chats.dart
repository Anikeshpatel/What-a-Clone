import 'package:design/models/Conversation.dart';
import 'package:design/ui/UserChat.dart';
import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: DefaultData.length,
      itemBuilder: (BuildContext context, int index){
        return UserChat(DefaultData[index]);
      },
    );
  }
}
