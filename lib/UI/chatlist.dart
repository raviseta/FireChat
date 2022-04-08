import 'package:flutter/material.dart';

import '../Widgets/chatlistuser.dart';
import '../models/chatuser.dart';

class ChatList extends StatefulWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  State<ChatList> createState() => _ChatListState();
}

class _ChatListState extends State<ChatList> {
  List<ChatUsers> chatUsers = [
    ChatUsers(
      name: "Jane Russel",
      messageText: "Awesome Setup",
      imageURL: "images/userImage1.jpeg",
      time: "Now",
    ),
    ChatUsers(
      name: "Jane Russel",
      messageText: "Awesome Setup",
      imageURL: "images/userImage1.jpeg",
      time: "Now",
    ),
    ChatUsers(
      name: "Jane Russel",
      messageText: "Awesome Setup",
      imageURL: "images/userImage1.jpeg",
      time: "Now",
    ),
    ChatUsers(
      name: "Jane Russel",
      messageText: "Awesome Setup",
      imageURL: "images/userImage1.jpeg",
      time: "Now",
    ),
    ChatUsers(
      name: "Jane Russel",
      messageText: "Awesome Setup",
      imageURL: "images/userImage1.jpeg",
      time: "Now",
    ),
    ChatUsers(
      name: "Jane Russel",
      messageText: "Awesome Setup",
      imageURL: "images/userImage1.jpeg",
      time: "Now",
    ),
    ChatUsers(
      name: "Jane Russel",
      messageText: "Awesome Setup",
      imageURL: "images/userImage1.jpeg",
      time: "Now",
    ),
    ChatUsers(
      name: "Jane Russel",
      messageText: "Awesome Setup",
      imageURL: "images/userImage1.jpeg",
      time: "Now",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("chats"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return const ChatlistUser();
              },
              itemCount: chatUsers.length,
              shrinkWrap: true,
            ),
          ],
        ),
      ),
    );
  }
}
