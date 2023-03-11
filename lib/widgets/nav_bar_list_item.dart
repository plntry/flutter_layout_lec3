import 'package:flutter/material.dart';

class NavBarListItem extends StatelessWidget {
  final IconData iconData;
  final String text;

  const NavBarListItem({
    required this.iconData,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: Icon(
              iconData,
              color: Colors.grey,
              size: 27,
            ),
          ),
          Expanded(
            flex: 11,
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
