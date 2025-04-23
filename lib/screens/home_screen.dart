import 'package:flutter/material.dart';
import 'catalog_screen.dart';
import 'saved_designs_screen.dart';
import 'room_measurement_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  
  final List<Widget> _screens = [
    const CatalogScreen(),
    const SavedDesignsScreen(),
    const RoomMeasurementScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AR Interior Design'),
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.chair),
            label: 'Catalog',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.save),
            label: 'Saved Designs',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.straighten),
            label: 'Measure',
          ),
        ],
      ),
    );
  }
} 