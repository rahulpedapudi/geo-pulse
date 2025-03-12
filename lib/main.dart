import 'package:flutter/material.dart';
import 'theme.dart';
import './screens/home_screen.dart';
import './screens/emergency_screen.dart';
import './screens/news_screen.dart';
import './screens/account_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: appTheme,
      home: StartPage(),
    );
  }
}

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  int currentPageIndex = 0;

  final List<Widget> screens = [
    HomeScreen(),
    EmergencyScreen(),
    NewsScreen(),
    AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentPageIndex, children: screens),
      bottomNavigationBar: NavigationBar(
        indicatorColor: const Color.fromARGB(255, 210, 210, 210),
        onDestinationSelected: (value) {
          setState(() {
            currentPageIndex = value;
          });
        },
        selectedIndex: currentPageIndex,
        indicatorShape: CircleBorder(),
        destinations: [
          NavigationDestination(icon: Icon(Icons.home_rounded), label: "Home"),
          NavigationDestination(
            icon: Icon(Icons.emergency_rounded),
            label: "Emergency",
          ),
          NavigationDestination(
            icon: Icon(Icons.newspaper_rounded),
            label: "News",
          ),
          NavigationDestination(
            icon: Icon(Icons.account_circle_rounded),
            label: "Account",
          ),
        ],
      ),
    );
  }
}
