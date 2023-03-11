import 'package:flutter/material.dart';
import 'package:flutter_layout_lec3/widgets/nav_bar_list_item.dart';

class NavBarList extends StatelessWidget {
  const NavBarList({super.key});

  final listItemProps = const [
    {
      'icon': Icons.people_alt_outlined,
      'text': 'New Group',
    },
    {
      'icon': Icons.person_outline,
      'text': 'Contacts',
    },
    {
      'icon': Icons.local_phone_outlined,
      'text': 'Calls',
    },
    {
      'icon': Icons.room_outlined,
      'text': 'People Nearby',
    },
    {
      'icon': Icons.article_outlined,
      'text': 'Saved Messages',
    },
    {
      'icon': Icons.settings_outlined,
      'text': 'Settings',
    },
    {
      'icon': Icons.person_add_outlined,
      'text': 'Invite Friends',
    },
    {
      'icon': Icons.question_mark_outlined,
      'text': 'Telegram Features',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 10,
      child: Column(
        children: [
          ...(listItemProps)
              .map(
                (item) => Column(
                  children: [
                    NavBarListItem(
                      iconData: item['icon'] as IconData,
                      text: item['text'] as String,
                    ),
                    item['text'] == 'Settings'
                        ? const Divider(
                            height: 2.2,
                            thickness: 0.5,
                          )
                        : Container()
                  ],
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
