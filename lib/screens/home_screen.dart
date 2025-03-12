import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GeoPulse", style: TextStyle(fontSize: 24)),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: IconButton(
              onPressed: null,
              icon: Icon(
                Icons.notifications_none_rounded,
                color: (Colors.white),
                size: 28,
              ),
            ),
          ),
        ],
        leading: IconButton(
          onPressed: null,
          icon: Icon(Icons.menu_rounded, color: (Colors.white), size: 28),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text("Home Page"),
        ),
      ),
    );
  }
}
