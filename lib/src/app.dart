import 'package:chat_monster/src/screens/login_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat Monster',
      theme: ThemeData(
        fontFamily: "Quicksand",
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          primary: const Color(0xffE98259),
          secondary: const Color(0xff2D3055),
          error: const Color(0xffe63946),
          brightness: Brightness.light,
        ),
      ),
      home: const LoginScreen(),
    );
  }
}
