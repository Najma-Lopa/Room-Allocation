import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String Title;
  const CustomAppBar({
    super.key,
    required this.Title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(Title) ,
      centerTitle: true,
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
        const SizedBox(width: 10),
        const CircleAvatar(),
        const SizedBox(width: 10),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
