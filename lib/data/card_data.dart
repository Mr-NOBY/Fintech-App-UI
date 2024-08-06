import 'package:fintech_app/models/card_model.dart';
import 'package:flutter/material.dart';

List<CardModel> cards = [
  CardModel(
    cardNumber: '1234567812343456',
    totalBalance: '\$25,000.40',
    name: 'Client Name',
    expiryDate: '09/23',
    iconPath: 'assets/icons/visa.png',
    color: Colors.white,
  ),
  CardModel(
    cardNumber: '1234567812343456',
    totalBalance: '\$00.00',
    name: 'Client Name',
    expiryDate: '09/23',
    iconPath: 'assets/icons/visa.png',
    color: const Color.fromRGBO(251, 229, 163, 1),
  ),
];
