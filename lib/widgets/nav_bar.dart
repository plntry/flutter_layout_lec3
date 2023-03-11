import 'package:flutter/material.dart';
import 'package:flutter_layout_lec3/widgets/nav_bar_list.dart';
import './nav_bar_header.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: const [
          NavBarHeader(
            'oksana nedilko',
            '+380 (66) 336 69 21',
            'userphoto.jpg',
          ),
          NavBarList(),
        ],
      ),
    );
  }
}
