import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class ContainerChart extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ContainerChartState();
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class ContainerChartState extends State<ContainerChart> {
  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.7,
      child: Container(
          height: 550,
          padding: EdgeInsets.all(10),
          child: SfCartesianChart(
            title: ChartTitle(text: "this month's shopping expense chart"),
            borderColor: Colors.red,
            backgroundColor: Colors.white54,
            primaryXAxis:
                CategoryAxis(title: AxisTitle(text: "Weeks of month")),
            primaryYAxis: CategoryAxis(title: AxisTitle(text: "(VND)")),
            series: <ChartSeries<SalesData, String>>[
              StackedLineSeries<SalesData, String>(
                  dataLabelSettings: DataLabelSettings(isVisible: true),
                  markerSettings: MarkerSettings(isVisible: true),
                  dataSource: getColumnData(),
                  xValueMapper: (datum, int index) {
                    return datum.x;
                  },
                  yValueMapper: (datum, int index) {
                    return datum.y;
                  }),
            ],
          )),
    );
  }
}

class SalesData {
  String x;
  double y;
  SalesData(this.x, this.y);
}

dynamic getColumnData() {
  List columnData = <SalesData>[
    SalesData("First", 150000),
    SalesData("Second", 400000),
    SalesData("Third", 220000),
    SalesData("Fourth", 994950),
  ];
  return columnData;
}
