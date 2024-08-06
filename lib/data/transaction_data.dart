import 'package:fintech_app/models/transaction_model.dart';
import 'package:flutter/material.dart';

List<TransactionModel> transactions = [
  TransactionModel(
      title: 'Adobe Illustrator',
      subtitle: 'Subscription fee',
      amount: -32.00,
      icon: Icons.laptop,
      color: const Color.fromRGBO(255, 198, 87, 1)),
  TransactionModel(
      title: 'Dribbble',
      subtitle: 'Subscription fee',
      amount: -15.00,
      icon: Icons.laptop,
      color: const Color.fromRGBO(255, 198, 87, 1)),
  TransactionModel(
      title: 'Sony Camera',
      subtitle: 'Shopping fee',
      amount: -200.00,
      icon: Icons.shopping_bag_outlined,
      color: const Color.fromRGBO(246, 188, 232, 1)),
  TransactionModel(
      title: 'Paypal',
      subtitle: 'Salary',
      amount: 32.00,
      icon: Icons.credit_card,
      color: const Color.fromRGBO(66, 205, 71, 1)),
];
