import 'package:flutter/material.dart';
import '../../../models/chat_message.dart';
import 'chat_list_item.dart';

class ChatList extends StatelessWidget {
  final List<ChatMessage> messages;

  const ChatList({super.key, required this.messages});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: messages.length,
      separatorBuilder: (_, __) => const Divider(height: 1, indent: 72),
      itemBuilder: (context, index) {
        return ChatListItem(
          message: messages[index],
          onTap: () {
            // TODO: Navigate to individual chat screen
          },
        );
      },
    );
  }
}
