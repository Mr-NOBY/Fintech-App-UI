import 'package:fintech_app/data/transaction_data.dart';
import 'package:flutter/material.dart';

class Transactions extends StatelessWidget {
  const Transactions({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: transactions.length,
      itemBuilder: (context, index) {
        final transaction = transactions[index];
        final amountColor = transaction.amount < 0 ? Colors.red : Colors.green;
        final amountText = transaction.amount < 0
            ? '-\$${(-transaction.amount).toStringAsFixed(2)}'
            : '+\$${transaction.amount.toStringAsFixed(2)}';

        return Column(
          children: [
            ListTile(
              tileColor: Colors.white,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8))),
              leading: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(50)),
                  child: Container(
                      width: 40,
                      height: 40,
                      color: transaction.color.withOpacity(0.2),
                      child: Icon(
                        transaction.icon,
                        color: transaction.color,
                      ))),
              title: Text(
                transaction.title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(transaction.subtitle,
                  style: Theme.of(context).textTheme.displayMedium),
              trailing: Text(
                amountText,
                style: TextStyle(
                  color: amountColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
          ],
        );
      },
    );
  }
}
