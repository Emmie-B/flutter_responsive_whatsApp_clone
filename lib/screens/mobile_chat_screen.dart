import 'package:flutter/material.dart';
import 'package:prv_tute/colors.dart';
import 'package:prv_tute/info.dart';
import 'package:prv_tute/widgets/chat_input.dart';
import 'package:prv_tute/widgets/chat_list.dart';

class MobileChatScreen extends StatelessWidget {
  const MobileChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(info[0]['name']!),
        centerTitle: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.videocam,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.call,
              color: Colors.grey,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/backgroundImage.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            Container(
              height: 25,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              decoration: const BoxDecoration(
                color: appBarColor,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: const Text(
                'Today',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
            const Expanded(child: ChatList()),
            const ChatInput(),
          ],
        ),
      ),
    );
  }
}
