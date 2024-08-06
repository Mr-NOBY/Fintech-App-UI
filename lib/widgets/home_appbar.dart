import 'package:fintech_app/controllers/navigation_controller.dart';
import 'package:fintech_app/widgets/circular_avatar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: AppBar(
        title: const Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Good Morning!',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
            ),
            Text(
              'Client Name',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            )
          ],
        ),
        leading: IconButton(
          icon: const CircularAvatar(),
          onPressed: () {
            controller.selectedIndex.value = 2;
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_outlined),
            onPressed: () {},
          ),
        ],
        titleSpacing: 0,
      ),
    );
  }
}
