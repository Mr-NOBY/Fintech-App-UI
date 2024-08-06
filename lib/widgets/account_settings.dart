import 'package:fintech_app/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';

class AccountSettings extends StatelessWidget {
  const AccountSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Account Settings",
            style: Theme.of(context).textTheme.displayLarge),
        const SizedBox(height: 12),
        CustomListTile(
          icon: Icons.settings_outlined,
          title: "Settings",
          onTap: () {},
        ),
        const SizedBox(height: 12),
        CustomListTile(
          icon: Icons.contact_support_outlined,
          title: "Help & Support",
          onTap: () {},
        ),
      ],
    );
  }
}
