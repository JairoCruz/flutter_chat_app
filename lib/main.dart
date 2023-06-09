import 'package:chat_app/config/theme/app_theme.dart';
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
      theme: AppTheme(selectedColor: 4).theme(),
      home:  Scaffold(
        body: Center(
          child: FilledButton.tonal(
              onPressed: () {},
               child: const Text('Presioname')
               ),
      ),
    )
    );
  }
}
