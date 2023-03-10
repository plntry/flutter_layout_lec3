import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Telegram',
      home: Scaffold(
        appBar: AppBar(
          elevation: 1.5,
          backgroundColor: const Color.fromARGB(255, 59, 134, 187),
          leading: const Icon(Icons.menu),
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
        body: ListTile(
          contentPadding: const EdgeInsets.only(top: 10, left: 10),
          leading: const CircleAvatar(
            radius: 30,
          ),
          title: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Arthur',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 19,
                  ),
                ),
                Text(
                  '12:56 PM',
                  style: TextStyle(
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
                const Text(
                  'How are you?',
                  style: TextStyle(
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
                  child: const Text(
                    '5',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
