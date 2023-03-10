import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  final String userName;
  final String lastMessageTime;
  final String lastMessage;
  final String iconName;
  final String? unreadNumber;

  const ChatItem({
    required this.lastMessage,
    required this.lastMessageTime,
    required this.userName,
    required this.iconName,
    this.unreadNumber,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.only(top: 5, left: 10),
      leading: CircleAvatar(
        radius: 30,
        backgroundImage: ExactAssetImage('assets/images/$iconName'),
      ),
      title: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              userName,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 19,
              ),
            ),
            Text(
              lastMessageTime,
              style: const TextStyle(
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
      subtitle: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              lastMessage,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 6.5,
                vertical: 2,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.grey,
              ),
              child: Text(
                unreadNumber ?? '',
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
