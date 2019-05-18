import 'package:design/models/Conversation.dart';
import 'package:design/pages/chat_screen.dart';
import 'package:flutter/material.dart';

class UserChat extends StatelessWidget {
  Conversation data;

  UserChat(this.data);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return ChatScreen(data);
        }));
      },
      title: Text(data.user, style: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w500
      ),),
      subtitle: Text(data.chats.last.message),
      trailing: Text("Today",
      style: TextStyle(
        fontSize: 12,
        color: Colors.black.withOpacity(0.5)
      ),),
      leading: CircleAvatar(child: Image.network("https://i0.wp.com/www.winhelponline.com/blog/wp-content/uploads/2017/12/user.png?resize=256%2C256&quality=100&ssl=1"),),
    );
  }
}
