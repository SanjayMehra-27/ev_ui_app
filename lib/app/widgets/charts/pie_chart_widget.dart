import 'package:ev_ui_app/app/widgets/charts/class/chart_data.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PieChartWidget extends StatefulWidget {
  const PieChartWidget({
    Key? key,
    required this.data,
  }) : super(key: key);
  final List<ChartData> data;

  @override
  State<PieChartWidget> createState() => _PieChartWidgetState();
}

class _PieChartWidgetState extends State<PieChartWidget> {
  
  @override
  Widget build(BuildContext context) {
    return SfCircularChart(series: <CircularSeries>[
      // Render pie chart
      PieSeries<ChartData, String>(
          dataSource: widget.data,
          dataLabelMapper: (ChartData data, _) => data.x,
          dataLabelSettings: const DataLabelSettings(
              isVisible: true, labelPosition: ChartDataLabelPosition.outside),
              enableTooltip: true,
          pointColorMapper: (ChartData data, _) => data.color,
          xValueMapper: (ChartData data, _) => data.x,
          yValueMapper: (ChartData data, _) => data.y,
          radius: '70%'),
    ]);
  }
}
