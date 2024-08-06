import 'package:fintech_app/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';

class AccountSummary extends StatelessWidget {
  const AccountSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Account Summary",
            style: Theme.of(context).textTheme.displayLarge),
        const SizedBox(height: 12),
        CustomListTile(
          icon: Icons.credit_card,
          title: "My Cards",
          onTap: () {},
        ),
        const SizedBox(height: 12),
        CustomListTile(
          icon: Icons.payments_outlined,
          title: "My Transactions",
          onTap: () {},
        ),
        const SizedBox(height: 12),
        CustomListTile(
          icon: Icons.currency_pound,
          title: "My Earnings",
          onTap: () {},
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}
