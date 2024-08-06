import 'package:fintech_app/home/home_page.dart';
import 'package:fintech_app/user/user_profile_page.dart';
import 'package:fintech_app/wallet/wallet_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationController extends GetxController {
  RxInt selectedIndex = 0.obs;

  final List<Widget> screens = [
    const HomePage(),
    const WalletPage(),
    const UserProfilePage(),
  ];
}
