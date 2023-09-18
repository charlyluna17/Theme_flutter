import 'package:flutter/material.dart';
import 'package:si_no_app/presentacion/widgets/chat/message_burbuja.dart';
import 'package:si_no_app/presentacion/widgets/chat/otro_message_burbuja.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(3.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5pUhPFBWSiLaYy4FU99t-AI4SzT3nF9bYKw&usqp=CAU'
            ),
          ),
        ),
        title: const Text('Carlos Luna 🤖'),
        centerTitle: false,
      ),

      body: _ChatView(),

    );
  }
}  

class _ChatView extends StatelessWidget{

  @override
  Widget build (BuildContext context){
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
        Expanded(
          child: ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index){
              return (index % 2 == 0 ) ? const OtroMyMessageBubble():
               MyMessageBubble();
            },
          )),
          Text('Hola Mundo')
          ],
        ),
      ),
    );
  
  }
}