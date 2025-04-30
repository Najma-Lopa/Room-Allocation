import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widgets/card_for_all.dart';

class HomePageStudent extends StatefulWidget {
  const HomePageStudent({super.key});

  @override
  State<HomePageStudent> createState() => _HomePageStudentState();
}

class _HomePageStudentState extends State<HomePageStudent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_active,
              size: 25,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          const CircleAvatar(),
        ],
      ),
      drawer: const Drawer(),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.grey.shade400,
              
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CardForAll(imagePath: "assets/images/class_room.png", text: "Class Room"),
                        CardForAll(imagePath: "assets/images/class_room.png", text: "Set Class Room"),
                        CardForAll(imagePath: "assets/images/class_room.png", text: "Courses"),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CardForAll(imagePath: "assets/images/class_room.png", text: "Class Room"),
                        CardForAll(imagePath: "assets/images/class_room.png", text: "Set Class Room"),
                        CardForAll(imagePath: "assets/images/class_room.png", text: "Courses"),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
