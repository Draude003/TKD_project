import 'package:flutter/material.dart';
import '../../../models/chat_message.dart';
import 'widgets/chat_list.dart';


class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChatList(messages: dummyMessages);
  }
}