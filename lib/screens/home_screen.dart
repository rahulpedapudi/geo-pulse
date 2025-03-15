import 'package:flutter/material.dart';
import 'package:project_x/screens/pages/contact_page.dart';
import 'package:project_x/screens/pages/donate_page.dart';
import 'package:project_x/screens/pages/find_shelter.dart';
import 'package:project_x/screens/pages/guides_page.dart';
import 'package:project_x/screens/pages/report_incident.dart';
import 'package:project_x/screens/pages/settings_page.dart';
import 'package:project_x/widgets/basic_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _navigateToPage(int index) {
    setState(() {
      _selectedIndex = index;
    });

    Navigator.pop(context);
  }

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
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(Icons.menu_rounded, color: Colors.white, size: 28),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: BasicDrawer(
        onItemTap: _navigateToPage,
        selectedIndex: _selectedIndex,
      ),
      body: SafeArea(
        child: IndexedStack(
          index: _selectedIndex,
          children: [
            Center(child: Text("Home Page")),
            Scaffold(body: FindShelter()),
            Scaffold(body: ReportIncidentPage()),
            Scaffold(body: GuidesPage()),
            Scaffold(body: DonatePage()),
            Scaffold(body: ContactPage()),
            Scaffold(body: SettingsPage()),
          ],
        ),
      ),
    );
  }
}
