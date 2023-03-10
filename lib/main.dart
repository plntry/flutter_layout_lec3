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
        body: const Text('body'),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
