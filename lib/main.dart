import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/flights.dart';
import 'screens/hotels.dart';
import 'screens/packages.dart';
import 'screens/tours.dart';
import 'screens/profile.dart';
import 'screens/login.dart';

void main() {
  runApp(const MTAApp());
}

class MTAApp extends StatelessWidget {
  const MTAApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MTA.COM',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      locale: const Locale('en'),
      supportedLocales: const [
        Locale('en'),
        Locale('ar'),
      ],
      home: const NavigationWrapper(),
    );
  }
}

class NavigationWrapper extends StatefulWidget {
  const NavigationWrapper({Key? key}) : super(key: key);

  @override
  _NavigationWrapperState createState() => _NavigationWrapperState();
}

class _NavigationWrapperState extends State<NavigationWrapper> {
  int _selectedIndex = 0;

  final List<Widget> _screens = const [
    HomeScreen(),
    FlightsScreen(),
    HotelsScreen(),
    PackagesScreen(),
    ToursScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.flight), label: 'Flights'),
          BottomNavigationBarItem(icon: Icon(Icons.hotel), label: 'Hotels'),
          BottomNavigationBarItem(icon: Icon(Icons.card_travel), label: 'Packages'),
          BottomNavigationBarItem(icon: Icon(Icons.tour), label: 'Tours'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
