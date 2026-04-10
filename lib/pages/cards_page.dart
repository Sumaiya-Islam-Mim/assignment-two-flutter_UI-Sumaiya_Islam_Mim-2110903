

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

class CardsPage extends StatelessWidget {
  const CardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                gradient: const LinearGradient(colors: [Colors.black87, Colors.blueGrey]),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("BANK", style: TextStyle(color: Colors.white)),
                    Text("4567 **** **** 1234", style: TextStyle(color: Colors.white)),
                    Text("CARD HOLDER\nYOUR NAME", style: TextStyle(color: Colors.white70)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Swiper(
  itemCount: 3,
  itemBuilder: (context, index) {
    return YourCardWidget(); // your card UI
  },
)
