import 'package:chat_app/config/theme/app_theme.dart';
import 'package:chat_app/presentacion/screens/chat/chat_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Chat App',
        theme: AppTheme(selectedColor: 1).theme(),
        home: const Scaffold(
          body: ChatScreen()
        ));
  }
}
