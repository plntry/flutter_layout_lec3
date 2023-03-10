import 'package:flutter/material.dart';
import 'package:flutter_layout_lec3/presentation/my_flutter_app_icons.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              color: const Color.fromARGB(255, 59, 134, 187),
              child: Row(
                children: const [
                  CircleAvatar(
                    radius: 35,
                    backgroundImage:
                        ExactAssetImage('assets/images/flutter.jpg'),
                  ),
                  Icon(
                    MyFlutterApp.moon_inv,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 10,
            child: Column(
              children: const [
                Text('navbar list'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
