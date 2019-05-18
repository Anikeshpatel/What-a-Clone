import 'package:design/fragments/messages_list.dart';
import 'package:design/models/Conversation.dart';
import 'package:flutter/material.dart';


class ChatScreen extends StatefulWidget {
  Conversation _chatData;

  ChatScreen(this._chatData);

  @override
  _ChatScreenState createState() => _ChatScreenState(_chatData);
}

class _ChatScreenState extends State<ChatScreen> {
  Conversation chatData;

  _ChatScreenState(this.chatData);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            CircleAvatar(
              child: Image.network(
                  'https://i0.wp.com/www.winhelponline.com/blog/wp-content/uploads/2017/12/user.png?resize=256%2C256&quality=100&ssl=1'),
            ),
            SizedBox(
              width: 10,
            ),
            Text(chatData.user)
          ],
        ),
        leading: InkWell(
          child: Icon(Icons.arrow_back_ios),
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
        actions: <Widget>[
        InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.more_vert),
          ),
        )
      ],
      ),


      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(child: MessageList(chatData.chats)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
              child: Card(
                elevation: 5,
                child: Row(
                  children: <Widget>[
                    Icon(Icons.camera_alt),
                    Text("Type a message")
                  ],
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
