import 'package:flutter/material.dart';

import './widgets/chat_list.dart';
import './widgets/nav_bar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final _messagesData = const [
    {
      'userName': 'Артур',
      'lastMessageTime': '12:54 PM',
      'lastMessage': 'Дякую!',
      'unreadNumber': '2',
      'iconName': 'matt.jpg',
    },
    {
      'userName': 'Flutter chatik',
      'lastMessageTime': '10:15 AM',
      'lastMessage': 'Ihor: Скинь посилання',
      'unreadNumber': '127',
      'iconName': 'flutter.jpg',
    },
    {
      'userName': 'ІС0X Теорія розкладів',
      'lastMessageTime': '09:48 AM',
      'lastMessage': 'Михайло: А нашо нам це вчить?',
      'unreadNumber': '5',
      'iconName': 'tr.png',
    },
    {
      'userName': 'ІС0X Теорія розкладів',
      'lastMessageTime': '09:48 AM',
      'lastMessage': 'Михайло: А нашо нам це вчить?',
      'unreadNumber': '5',
      'iconName': 'tr.png',
    },
    {
      'userName': 'ІС0X Теорія розкладів',
      'lastMessageTime': '09:48 AM',
      'lastMessage': 'Михайло: А нашо нам це вчить?',
      'unreadNumber': '5',
      'iconName': 'tr.png',
    },
    {
      'userName': 'ІС0X Теорія розкладів',
      'lastMessageTime': '09:48 AM',
      'lastMessage': 'Михайло: А нашо нам це вчить?',
      'unreadNumber': '5',
      'iconName': 'tr.png',
    },
    {
      'userName': 'ІС0X Теорія розкладів',
      'lastMessageTime': '09:48 AM',
      'lastMessage': 'Михайло: А нашо нам це вчить?',
      'unreadNumber': '5',
      'iconName': 'tr.png',
    },
    {
      'userName': 'ІС0X Теорія розкладів',
      'lastMessageTime': '09:48 AM',
      'lastMessage': 'Михайло: А нашо нам це вчить?',
      'unreadNumber': '5',
      'iconName': 'tr.png',
    },
    {
      'userName': 'ІС0X Теорія розкладів',
      'lastMessageTime': '09:48 AM',
      'lastMessage': 'Михайло: А нашо нам це вчить?',
      'unreadNumber': '5',
      'iconName': 'tr.png',
    },
    {
      'userName': 'ІС0X Теорія розкладів',
      'lastMessageTime': '09:48 AM',
      'lastMessage': 'Михайло: А нашо нам це вчить?',
      'unreadNumber': '5',
      'iconName': 'tr.png',
    },
    {
      'userName': 'ІС0X Теорія розкладів',
      'lastMessageTime': '09:48 AM',
      'lastMessage': 'Михайло: А нашо нам це вчить?',
      'unreadNumber': '5',
      'iconName': 'tr.png',
    },
    {
      'userName': 'ІС0X Теорія розкладів',
      'lastMessageTime': '09:48 AM',
      'lastMessage': 'Михайло: А нашо нам це вчить?',
      'unreadNumber': '5',
      'iconName': 'tr.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Telegram',
      home: Scaffold(
        appBar: AppBar(
          elevation: 1.5,
          backgroundColor: const Color.fromARGB(255, 59, 134, 187),
          title: const Text(
            'Telegram',
            style: TextStyle(
              fontSize: 21,
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(Icons.search),
            ),
          ],
        ),
        drawer: const NavBar(),
        body: ChatList(
          messagesData: _messagesData,
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
