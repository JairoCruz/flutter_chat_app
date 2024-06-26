import 'package:chat_app/config/theme/app_theme.dart';
import 'package:chat_app/presentacion/screens/chat/chat_screen.dart';
import 'package:chat_app/providers/chat_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    // Esto me permite cambiar el color de la barra de abajo, esto es parte del sistema
    systemNavigationBarColor: Colors.white,
  ));
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ChatProvider())],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Chat App',
          theme: AppTheme(selectedColor: 1).theme(),
          // darkTheme: ThemeData.dark(),
          home: const Scaffold(body: ChatScreen())),
    );
  }
}
