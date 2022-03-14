import 'package:ev_ui_app/app/modules/usage_history/view/usage_history_vew.dart';
import 'package:ev_ui_app/app/utils/colors_constants/color_constatnts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {

  const HomeView({ Key? key }) : super(key: key);
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _widgetOptions(index);
  }

  Widget _widgetOptions(index) {
    switch (index) {
      case 0:
        return const HomePage();
      case 1:
        return const UsageHistoryPage();
      default:
        return const UsageHistoryPage();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SafeArea(
        child: _widgetOptions(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insights),
            label: 'Insights',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.data_usage),
            label: 'Usage',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: PRIMARY_COLOR,
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Home Page'));
  }
}