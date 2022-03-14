import 'package:ev_ui_app/app/modules/insights/widgets/insights_details_widget.dart';
import 'package:ev_ui_app/app/utils/colors_constants/color_constatnts.dart';
import 'package:ev_ui_app/app/widgets/charts/pie_chart_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final List<ChartData> chartData = [
  ChartData('Run', 75, color: PRIMARY_COLOR),
  ChartData('Trees Planted', 10, color: DANGER),
  ChartData('\$Spent', 5, color: SECONDARY_COLOR),
  ChartData('\$Earned', 7, color: WARNING_COLOR),
  ChartData('\$Saved', 3, color: SUCCESS_COLOR)
];

class InsightsPage extends StatelessWidget {
  const InsightsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: 
            SingleChildScrollView(
              child: Column(
                  children: [
                    //  todo: add header
                    Center(
                      child: Container(
              margin: const EdgeInsets.only(top: 40),
              height: Get.height * 0.07,
              width: Get.width * 0.9,
              decoration: const BoxDecoration(
                color: PRIMARY_COLOR,
              ),
              child: const Align(
                alignment: Alignment.center,
                child: Text(
                  'User Defined Time Selection',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
                      ),
                    ),
            
                    // todo: add insights details
                    const InsightsDetailsWidget(),
            
                    SizedBox(height: Get.height * 0.05),
                    // todo: add PIE-Chart for insights
                    const Text('Time Of Use Breakdown',style: TextStyle(fontSize: 20, color: SECONDARY_COLOR, fontWeight: FontWeight.bold)),
                    // Chart
                    PieChartWidget(data: chartData),
                  ],
                ),
            )));
  }
}
