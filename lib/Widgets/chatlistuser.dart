import 'package:flutter/material.dart';

import '../UI/chatdetailpage.dart';

class ChatlistUser extends StatelessWidget {
  const ChatlistUser({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return const ChatDetailPage();
          },
        ));
      },
      child: Container(
        padding:
            const EdgeInsets.only(left: 16, right: 16, top: 10, bottom: 10),
        child: Row(
          children: <Widget>[
            const CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://randomuser.me/api/portraits/men/5.jpg"),
              maxRadius: 30,
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Text(
                  "Ravi Seta",
                ),
                Text(
                  "this is detail text",
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
