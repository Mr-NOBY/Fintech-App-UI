import 'package:fintech_app/widgets/balance_card.dart';
import 'package:fintech_app/widgets/earnings.dart';
import 'package:fintech_app/widgets/home_appbar.dart';
import 'package:fintech_app/widgets/summary_card.dart';
import 'package:fintech_app/widgets/transactions.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(60),
        child: HomeAppbar(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BalanceCard(),
              const SizedBox(
                height: 8,
              ),
              const SummaryCard(),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Earnings",
                      style: Theme.of(context).textTheme.displayLarge),
                  TextButton(
                      onPressed: () {},
                      child: Text("See All",
                          style: Theme.of(context).textTheme.displaySmall))
                ],
              ),
              const Earnings(),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Transactions",
                      style: Theme.of(context).textTheme.displayLarge),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "See All",
                        style: Theme.of(context).textTheme.displaySmall,
                      ))
                ],
              ),
              Text(
                'Today',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              const SizedBox(
                height: 6,
              ),
              const Transactions(),
            ],
          ),
        ),
      ),
    );
  }
}
