import 'package:chat_app/presentacion/widgets/chat/her_message_bubble.dart';
import 'package:chat_app/presentacion/widgets/chat/my_message_bubble.dart';
import 'package:chat_app/presentacion/widgets/shared/message_field_box.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQt2XKEGC_Hwc-ekYUsqfATHQXJI-Gp2ErLEQ&usqp=CAU'),
          ), 
          ),
        title: const Text('Chat MSG'),
        centerTitle: false,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  
                  return (index % 2 == 0)
                  ? const HerMessageBubble()
                  : const MyMessageBubble();
                  
                },
                )
            ),
           const MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}