import 'package:flutter/material.dart';

class EarningModel {
  final String title;
  final String amount;
  final Color color;

  EarningModel({
    required this.title,
    required this.amount,
    required this.color,
  });

  String get iconText => title.isNotEmpty ? title[0].toUpperCase() : '';
}
