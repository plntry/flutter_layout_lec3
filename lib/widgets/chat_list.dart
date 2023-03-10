import 'package:flutter/material.dart';

import './chat_item.dart';

class ChatList extends StatelessWidget {
  final List<Map<String, Object>> messagesData;

  const ChatList({
    required this.messagesData,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ...(messagesData)
            .map((chat) => Column(
                  children: [
                    ChatItem(
                      lastMessage: chat['lastMessage'] as String,
                      lastMessageTime: chat['lastMessageTime'] as String,
                      unreadNumber: chat['unreadNumber'] as String,
                      userName: chat['userName'] as String,
                      iconName: chat['iconName'] as String,
                    ),
                    const Divider(
                      height: 2.2,
                      thickness: 0.5,
                    ),
                  ],
                ))
            .toList()
      ],
    );
  }
}
