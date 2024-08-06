import 'package:fintech_app/controllers/navigation_controller.dart';
import 'package:fintech_app/widgets/circular_avatar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WalletAppbar extends StatelessWidget {
  const WalletAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: AppBar(
        title: const Text(
          'Wallet',
        ),
        leading: IconButton(
          icon: const CircularAvatar(),
          onPressed: () {
            controller.selectedIndex.value = 2;
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
        titleSpacing: 70,
      ),
    );
  }
}
