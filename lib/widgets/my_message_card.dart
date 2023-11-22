import 'package:flutter/material.dart';
import 'package:prv_tute/colors.dart';
import 'package:prv_tute/info.dart';

// ignore: must_be_immutable
class MyMessageCard extends StatelessWidget {
  MyMessageCard({super.key, required this.index});
  int index;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 10, right: 10),
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
              color: messageColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                // bottomRight: Radius.circular(10),
              )),
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
                      fontSize: 10,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.done_all,
                    color: Colors.blue,
                    size: 15,
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
