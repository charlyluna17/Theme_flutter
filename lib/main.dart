import 'package:flutter/material.dart';
import 'package:si_no_app/config/theme/app_theme.dart';
import 'package:si_no_app/presentacion/chat/chat_screen.dart';


void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp ({super.key});

  // ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Si, No App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 5). theme(),
      home: const ChatScreen()
    );
  }
}