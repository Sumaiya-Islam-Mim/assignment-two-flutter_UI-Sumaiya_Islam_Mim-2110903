class HomePage extends StatelessWidget


BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home')





import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../widgets/transaction_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("Welcome back,"),
            Text("YOUR NAME", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 20),
            BalanceCard(),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ActionBtn(icon: Icons.send, label: "Transfer"),
                ActionBtn(icon: Icons.receipt, label: "Pay Bills"),
                ActionBtn(icon: Icons.show_chart, label: "Invest"),
              ],
            ),
            SizedBox(height: 20),
            Text("Recent Transactions"),
            TransactionTile("Netflix", "-19.99"),
            TransactionTile("Coffee Shop", "-4.50"),
            TransactionTile("Salary", "+3500"),
          ],
        ),
      ),
    );
  }
}

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: const LinearGradient(colors: [Color(0xFF5F5CFF), Color(0xFF6A82FB)]),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Total Balance", style: TextStyle(color: Colors.white70)),
          SizedBox(height: 8),
          Text("\$8,945.32", style: TextStyle(color: Colors.white, fontSize: 26)),
          SizedBox(height: 10),
          Text("Savings: \$5,500", style: TextStyle(color: Colors.white70)),
        ],
      ),
    );
  }
}