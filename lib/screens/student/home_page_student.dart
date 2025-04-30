import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:room_allocation_system/screens/Class%20Room/class_room_homePage.dart';

import '../../widgets/app_bar.dart';
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
      appBar: CustomAppBar(
        Title: "Home Page",
      ),
      drawer: const Drawer(),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Center(
              child: SingleChildScrollView(
                child: Container(
                  width: double.infinity,
                  child: Image.asset("assets/images/main_gate.jpg",fit: BoxFit.cover,),

                  color: Colors.grey.shade400,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                child: Wrap(
                  spacing: 20,
                  runSpacing: 20,
                  alignment: WrapAlignment.center,
                  children: [
                    CardForAll(
                        imagePath: "assets/images/class_room.png",
                        text: "Room Allocation",
                    newPage: ClassRoomHomepage(),),
                    CardForAll(
                        imagePath: "assets/images/class_room.png",
                        text: "Set Class Room",
                      newPage: ClassRoomHomepage(),),
                    CardForAll(
                        imagePath: "assets/images/class_room.png",
                        text: "Courses",
                      newPage: ClassRoomHomepage(),),
                    CardForAll(
                        imagePath: "assets/images/class_room.png",
                        text: "Class Room",
                      newPage: ClassRoomHomepage(),),
                    CardForAll(
                        imagePath: "assets/images/class_room.png",
                        text: "Set Class Room",
                      newPage: ClassRoomHomepage(),),
                    CardForAll(
                        imagePath: "assets/images/class_room.png",
                        text: "Courses",
                      newPage: ClassRoomHomepage(),),
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
