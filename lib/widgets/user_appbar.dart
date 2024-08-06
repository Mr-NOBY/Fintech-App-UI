import 'package:fintech_app/controllers/navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserAppbar extends StatelessWidget {
  const UserAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: AppBar(
        title: const Text(
          "User Profile",
        ),
        leading: IconButton(
          icon: const Icon(Icons.home_outlined),
          onPressed: () {
            controller.selectedIndex.value = 0;
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings_outlined),
            onPressed: () {},
          ),
        ],
        titleSpacing: 70,
      ),
    );
  }
}
