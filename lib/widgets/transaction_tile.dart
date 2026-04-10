
import 'package:flutter/material.dart';

class TransactionTile extends StatelessWidget {
  final String title;
  final String amount;

  const TransactionTile(this.title, this.amount, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(child: Icon(Icons.attach_money)),
      title: Text(title),
      trailing: Text(amount),
    );
  }
}
