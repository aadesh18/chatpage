import 'package:chatpage/chat_card.dart';
import 'package:chatpage/inzone_chat.dart';
import 'package:chatpage/inzone_search_bar.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class AllChatsScreen extends StatefulWidget {
  const AllChatsScreen({super.key});

  @override
  State<AllChatsScreen> createState() => _AllChatsScreenState();
}

class _AllChatsScreenState extends State<AllChatsScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            children: [
              // const Text(
              //   "Chats",
              //   style: TextStyle(
              //       color: Colors.black,
              //       fontWeight: FontWeight.bold,
              //       fontSize: 30),
              // ),
              // const SizedBox(
              //   height: 10,
              // ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: InZoneSearchBar(),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: Container(
                  width: screenWidth!,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      style: BorderStyle.solid,
                      width: 10.0,
                    ),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: ListView(
                    shrinkWrap: true,
                    // physics: NeverScrollableScrollPhysics(),
                    children: [
                      ChatCard(
                          inZoneChat: InZoneChat(
                            personName: "Aiden Mitchell",
                            profilePicturePath: "images/sample_avatar_2.png",
                            lastMessage: "This was amazing",
                            chatReference: "FZjcV1irTsrUVujUgBrM",
                          )),
                      ChatCard(
                          inZoneChat: InZoneChat(
                              personName: "Emma Davis",
                              profilePicturePath: "images/sample_avatar_2.png",
                              lastMessage: "OMG did you watch the finals?!")),
                      ChatCard(
                          inZoneChat: InZoneChat(
                            personName: "John Monroe",
                            profilePicturePath: "images/sample_avatar_2.png",
                            lastMessage: "Hey",
                            chatReference: "FZjcV1irTsrUVujUgBrM",)),
                      ChatCard(
                          inZoneChat: InZoneChat(
                              personName: "Isabella Taylor",
                              profilePicturePath: "images/sample_avatar_2.png",
                              lastMessage: "Oh nevermind")),
                      ChatCard(
                          inZoneChat: InZoneChat(
                            personName: "Liam Anderson",
                            profilePicturePath: "images/sample_avatar_2.png",
                            lastMessage:
                            "I definitely find that so interesting",
                            chatReference: "FZjcV1irTsrUVujUgBrM",)),
                      ChatCard(
                          inZoneChat: InZoneChat(
                            personName: "Ethan Reynolds",
                            profilePicturePath: "images/sample_avatar_2.png",
                            lastMessage: "See you later",
                            chatReference: "FZjcV1irTsrUVujUgBrM",)),
                      ChatCard(
                          inZoneChat: InZoneChat(
                            personName: "Olivia Thompson",
                            profilePicturePath: "images/sample_avatar_2.png",
                            lastMessage: "Byee",
                            chatReference: "FZjcV1irTsrUVujUgBrM",)),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
