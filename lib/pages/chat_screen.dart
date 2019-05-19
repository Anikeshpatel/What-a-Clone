import 'package:design/fragments/messages_list.dart';
import 'package:design/models/Conversation.dart';
import 'package:design/theme/colors.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  Conversation _chatData;

  ChatScreen(this._chatData);

  @override
  _ChatScreenState createState() => _ChatScreenState(_chatData);
}

class _ChatScreenState extends State<ChatScreen> {
  Conversation chatData;

  final List<String> menuItems = [
    "New Group",
    "New Broadcast",
    "Labels",
    "WhatsApp Web",
    "Starred messages",
    "Settings"
  ];

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
            PopupMenuButton(
              itemBuilder: (context) {
                return menuItems
                    .map((String menu) => PopupMenuItem(
                          child: Text(menu),
                        ))
                    .toList();
              },
            )
          ],
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/img/chat_bg.png"),
                  fit: BoxFit.cover)),
          child: Column(
            children: <Widget>[
              Expanded(child: MessageList(chatData.chats)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                child: Container(
                  height: 50,
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        flex: 6,
                        child: Card(
                          color: Colors.white,
                          elevation: 1,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: <Widget>[
                                InkWell(
                                  child: Icon(Icons.face, color: darkTextColor,),
                                  onTap: () {},
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Flexible(
                                  flex: 1,
                                  child: TextField(
                                    maxLines: 3,
                                    textInputAction: TextInputAction.newline,
                                    decoration: InputDecoration(
                                        hintText: "Type a message",
                                        fillColor: Colors.transparent,
                                        labelStyle: TextStyle(
                                            color: Colors.transparent),
                                        border: InputBorder.none
                                    ),
                                    onChanged: (text) {
                                      print(text);
                                    },
                                  ),
                                ),
                                InkWell(
                                  child: Icon(Icons.attach_file, color: darkTextColor,),
                                  onTap: () {},
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                InkWell(
                                  child: Icon(Icons.camera_alt, color: darkTextColor),
                                  onTap: () {},
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: ButtonTheme(
                          minWidth: 50,
                          child: new RaisedButton(
                            color: primaryColor,
                            onPressed: () {
                              print("Message Send");
                            },
                            child: new Icon(
                              Icons.send,
                              color: Colors.white,
                            ),
                            shape: new CircleBorder(),
                            elevation: 2.0,
                            padding: const EdgeInsets.all(15.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
