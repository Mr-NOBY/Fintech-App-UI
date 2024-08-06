import 'package:flutter/material.dart';

class TransactionModel {
  final String title;
  final String subtitle;
  final double amount;
  final IconData icon;
  final Color color;

  TransactionModel(
      {required this.subtitle,
      required this.amount,
      required this.icon,
      required this.color,
      required this.title});
}
