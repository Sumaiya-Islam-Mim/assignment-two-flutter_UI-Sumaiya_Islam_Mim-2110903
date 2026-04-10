class ProfilePage extends StatelessWidget

import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("User Profile", style: TextStyle(fontSize: 20)),
            SizedBox(height: 20),
            CircleAvatar(radius: 30, child: Text("SN")),
            SizedBox(height: 20),
            Text("Name: YOUR FULL NAME"),
            Text("Student ID: YOUR IUB ID"),
            Text("Email: yourname@iub.edu.bd"),
            Text("Bio: Write your bio here"),
          ],
        ),
      ),
    );
  }
}

