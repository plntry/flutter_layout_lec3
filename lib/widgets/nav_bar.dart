import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:flutter_layout_lec3/presentation/my_flutter_app_icons.dart';

class NavBar extends StatelessWidget {
  final String userName;
  final String userPhone;
  final String userImage;

  const NavBar(
    this.userName,
    this.userPhone,
    this.userImage, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: 65,
                ),
                width: double.infinity,
                color: const Color.fromARGB(255, 59, 134, 187),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 36,
                          backgroundImage:
                              ExactAssetImage('assets/images/$userImage'),
                        ),
                        Transform.rotate(
                          angle: 275 * math.pi / 180,
                          child: const Padding(
                            padding: EdgeInsets.only(top: 5, right: 10),
                            child: Icon(
                              MyFlutterApp.moon_inv,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 11),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 5),
                                child: Text(
                                  userName,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              Text(
                                userPhone,
                                style: const TextStyle(
                                  color: Color.fromARGB(255, 183, 215, 236),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Transform.rotate(
                          angle: 90 * math.pi / 180,
                          child: const Padding(
                            padding: EdgeInsets.only(right: 9),
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                              size: 18,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )),
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
