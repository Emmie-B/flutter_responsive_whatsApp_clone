import 'package:flutter/material.dart';
import 'package:prv_tute/info.dart';
import 'package:prv_tute/widgets/my_message_card.dart';
import 'package:prv_tute/widgets/sender_message_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: ListView.builder(
          itemCount: messages.length,
          itemBuilder: (context, index) {
            if (messages[index]['isMe'] == true) {
              return Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: MyMessageCard(index: index),
              );
            } else {
              return SenderMessageCard(index: index);
            }
          }),
    );
  }
}
