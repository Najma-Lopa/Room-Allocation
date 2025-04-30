import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:room_allocation_system/screens/Class%20Room/class_room_homePage.dart';
import 'package:room_allocation_system/screens/student/home_page_student.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //home: HomePageStudent(),
      home: ClassRoomHomepage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
