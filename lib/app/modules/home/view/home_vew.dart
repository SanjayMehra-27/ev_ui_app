import 'package:ev_ui_app/app/modules/home/widgets/home_status_row/home_status_row.dart';
import 'package:ev_ui_app/app/modules/home/widgets/options/options_widget.dart';
import 'package:ev_ui_app/app/modules/supports/view/supports_view.dart';
import 'package:ev_ui_app/app/widgets/charts/class/chart_data.dart';
import 'package:ev_ui_app/app/widgets/charts/doughnut_chart_widget.dart';
import 'package:flutter/material.dart';
import 'package:ev_ui_app/app/modules/insights/view/insights_vew.dart';
import 'package:ev_ui_app/app/modules/usage_history/view/usage_history_vew.dart';
import 'package:ev_ui_app/app/utils/colors_constants/color_constatnts.dart';

final List<ChartData> chartData = [
  ChartData('Charging at 11C/hr', 75, color: PRIMARY_COLOR),
  ChartData(' ', 10, color: DANGER),
  ChartData(' ', 5, color: SECONDARY_COLOR),
  ChartData(' ', 7, color: WARNING_COLOR),
];

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
        return HomePage();
      case 1:
        return const InsightsPage();
      case 2:
        return const UsageHistoryPage();
      case 3:
        return SupportsPage();
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
  HomePage({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            // todo: add header
            Row(
              children: [
                Container(
                  alignment: Alignment.bottomLeft,
                  margin: const EdgeInsets.only(bottom: 16),
                  height: 60,
                  child: const Text(
                    'Status : Charging, Smart Charge',
                    style: TextStyle(
                      fontSize: 25,
                      color: DARK_COLOR
                    ),
                  ),
                ),
              ],
            ),
            // todo: status cards section [Estimated kms, Estimated costs, Rewards]
            const HomeStatusRowWidget(
              imagePath: 'assets/images/live@test.png',
            ),
            const HomeStatusRowWidget(
              imagePath: 'assets/images/back_arrow@test.png',
            ),
      
            // todo: circular chart
            DoughnutChartWidget(data: chartData,),
      
            // todo: options buttons with label name
           HomeOptionsWidget(),
      
          ],
        ),
      ),
    );
  }
}



