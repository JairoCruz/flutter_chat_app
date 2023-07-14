import 'package:flutter/material.dart';

import '../domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  List<Message> messageList = [
    Message(text: 'Hola Colocha', fromWho: FromWho.me),
    Message(text: 'Ya regresastes del trabajo?', fromWho: FromWho.me)
  ];

  Future<void> sendMessage(String text) async {
    // TODO: Implementar message.

  }

}