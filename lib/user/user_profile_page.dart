import 'package:fintech_app/widgets/account_settings.dart';
import 'package:fintech_app/widgets/account_summary.dart';
import 'package:fintech_app/widgets/custom_list_tile.dart';
import 'package:fintech_app/widgets/user_appbar.dart';
import 'package:fintech_app/widgets/user_card.dart';
import 'package:flutter/material.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: UserAppbar(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const UserCard(),
              const SizedBox(
                height: 16,
              ),
              const AccountSummary(),
              const AccountSettings(),
              const Divider(),
              CustomListTile(
                icon: Icons.logout,
                title: "Log out",
                onTap: () {},
                tileColor: const Color.fromARGB(255, 253, 228, 232),
                titleColor: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
