import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:si_no_app/config/theme/helpers/get_yes_no_answer.dart';
import 'package:si_no_app/domain/entities/message.dart';


class ChatProvider extends ChangeNotifier {

  final getYesNoAnswer = GetYesNoAnswer();
  final ScrollController chatScrollController = ScrollController();

//chat que estan predefinidos
  List<Message> messageList = [
    Message(text: 'Que ondas', fromWho: FromWho.mine),
    Message(text: 'Ya regresaste', fromWho: FromWho.mine)
  ];

//chat que escribiremos desde el chat
  Future<void> sendMessage ( String text) async{
    if(text.isEmpty) return;
    
    final newMessage = Message(text: text, fromWho: FromWho.mine);
    messageList.add(newMessage);

    if (text.endsWith('?')){
      await otherReply();
    }

    notifyListeners();
    moveScrollToBottom();
  }

  Future<void> moveScrollToBottom() async {
    await Future.delayed(const Duration(milliseconds: 100));

    chatScrollController.animateTo(
    chatScrollController.position.maxScrollExtent,
    duration: const Duration(microseconds: 300),
    curve: Curves.easeOut
    );
  
  }

  Future<void> otherReply() async{
    final otherMessage = await getYesNoAnswer.getAnswer();
    messageList.add(otherMessage);
    notifyListeners();
    moveScrollToBottom();
  }


}