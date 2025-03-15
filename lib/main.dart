import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'theme.dart';
import './screens/home_screen.dart';
import './screens/emergency_screen.dart';
import './screens/news_screen.dart';
import './screens/account_screen.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
  Future.delayed(const Duration(seconds: 3), () {
    FlutterNativeSplash.remove();
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
        indicatorColor: Theme.of(context).colorScheme.surface,
        indicatorShape: StadiumBorder(),
        onDestinationSelected: (value) {
          setState(() {
            currentPageIndex = value;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: [
          NavigationDestination(
            selectedIcon: Icon(
              Icons.home_rounded,
              color: Theme.of(context).colorScheme.primary,
            ),
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          NavigationDestination(
            icon: Icon(Icons.emergency_outlined),
            label: "Emergency",
            selectedIcon: Icon(
              Icons.emergency_rounded,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          NavigationDestination(
            icon: Icon(Icons.newspaper_outlined),
            selectedIcon: Icon(
              Icons.newspaper_rounded,
              color: Theme.of(context).colorScheme.primary,
            ),
            label: "News",
          ),
          NavigationDestination(
            icon: Icon(Icons.account_circle_outlined),
            selectedIcon: Icon(
              Icons.account_circle_rounded,
              color: Theme.of(context).colorScheme.primary,
            ),
            label: "Account",
          ),
        ],
      ),
    );
  }
}
