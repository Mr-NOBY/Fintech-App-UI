import 'dart:ui';

class CardModel {
  final String cardNumber;
  final String totalBalance;
  final String name;
  final String expiryDate;
  final String iconPath;
  final Color color;

  CardModel({
    required this.cardNumber,
    required this.totalBalance,
    required this.name,
    required this.expiryDate,
    required this.iconPath,
    required this.color,
  });
}
