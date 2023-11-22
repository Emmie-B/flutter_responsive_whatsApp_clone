import 'package:flutter/material.dart';
import 'package:prv_tute/colors.dart';
import 'package:prv_tute/info.dart';

// ignore: must_be_immutable
class SenderMessageCard extends StatelessWidget {
  SenderMessageCard({super.key, required this.index});
  int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 10, left: 10),
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: senderMessageColor,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(10),
              topLeft: Radius.circular(10),
              // bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(20),
            ),
          ),
          constraints: const BoxConstraints(
            maxWidth: 250,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                messages[index]['text'].toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    messages[index]['time'].toString(),
                    style: const TextStyle(
                      color: Colors.grey,
                      fontSize: 11,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
    
  }
}
