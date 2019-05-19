
class Conversation {
  String user;
  List<Chat> chats;

  Conversation({this.user, this.chats});
}


class Chat {
  String message;
  String author;
  int replyTo;

  Chat({this.message, this.author, this.replyTo});
}


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