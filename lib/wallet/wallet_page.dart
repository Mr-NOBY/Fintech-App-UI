import 'package:fintech_app/widgets/cards.dart';
import 'package:fintech_app/widgets/transactions.dart';
import 'package:fintech_app/widgets/wallet_appbar.dart';
import 'package:flutter/material.dart';

class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: WalletAppbar(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const Cards(),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Transactions",
                      style: Theme.of(context).textTheme.displayLarge),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.tune))
                ],
              ),
              const Transactions(),
            ],
          ),
        ),
      ),
    );
  }
}
