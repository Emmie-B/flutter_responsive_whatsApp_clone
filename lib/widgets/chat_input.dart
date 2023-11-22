import 'package:flutter/material.dart';
import 'package:prv_tute/colors.dart';

class ChatInput extends StatelessWidget {
  const ChatInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.077,
      decoration: const BoxDecoration(
        color: chatBarMessage,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                color: Colors.grey,
              ),
            ),
            const Expanded(
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  prefixIcon: Icon(
                    Icons.emoji_emotions_outlined,
                    color: Colors.grey,
                  ),
                  contentPadding: EdgeInsets.all(8),
                  fillColor: searchBarColor,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Type a message",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.mic,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
