import 'package:flutter/material.dart';
import 'package:prv_tute/colors.dart';
import 'package:prv_tute/widgets/chat_input.dart';
import 'package:prv_tute/widgets/chat_list.dart';
import 'package:prv_tute/widgets/web_cath_app_bar.dart';
import 'package:prv_tute/widgets/web_profile_bar.dart';
import 'package:prv_tute/widgets/web_search_bar.dart';

import '../widgets/contact_list.dart';
// import 'package:prv_tute/widgets/contact_list.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const Expanded(
            child: Column(
              children: [
                WebProfileBar(),
                SearchBarWeb(),
                Expanded(child: ContactList()),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.7,
            // height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/backgroundImage.png"),
                fit: BoxFit.cover,
              ),
            ),

            child: Column(
              children: [
                const ChatAppBar(),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: 25,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  decoration: const BoxDecoration(
                    color: appBarColor,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  child: const Text('Today',
                      style: TextStyle(
                        color: Colors.grey,
                      )),
                ),
                const Expanded(child: ChatList()),
                const ChatInput(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
