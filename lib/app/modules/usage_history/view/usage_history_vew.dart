import 'package:flutter/material.dart';

class UsageHistoryPage extends StatelessWidget {
  const UsageHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          // todo: add usage history title
          Container(
            padding: const EdgeInsets.all(30),
            child: Center(
                child: Text('Usage History',
                    style: Theme.of(context).textTheme.headline5)),
          ),
          // todo: add usage history Table [Start Time, End Time, Energy Added, Charging Cost]
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: DataTable(
                dataRowHeight: 60,
                columnSpacing: 30,
                columns: const <DataColumn>[
                  DataColumn(
                    label: Text(
                      'Start Date',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'End Date',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Energy Added',
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Charging Cost',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                ],
                rows: const <DataRow>[
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('1/1/2020')),
                      DataCell(Text('1/2/2020')),
                      DataCell(Text('10 kWh')),
                      DataCell(Text('\$3.25')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('1/5/2020')),
                      DataCell(Text('1/6/2020')),
                      DataCell(Text('8.9 kWh')),
                      DataCell(Text('\$10.00')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('1/8/2020')),
                      DataCell(Text('1/9/2020')),
                      DataCell(Text('3.9 kWh')),
                      DataCell(Text('\$4.00')),
                    ],
                  ),
                  DataRow(
                    cells: <DataCell>[
                      DataCell(Text('1/10/2020')),
                      DataCell(Text('1/11/2020')),
                      DataCell(Text('4.9 kWh')),
                      DataCell(Text('\$5.00')),
                    ],
                  ),
                  
                ],
              ),
            ),
          ),
        ],
      )),
    );
  }
}
