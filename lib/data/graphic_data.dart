import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class TimeSeriesData {
  final int x;
  final int y;

  TimeSeriesData(this.x, this.y);
}

List<TimeSeriesData> timeSeriesData = [
  TimeSeriesData(1, 3),
  // TimeSeriesData(6, 5),
  // TimeSeriesData(8, 2),
  // TimeSeriesData(10, 1),
  // TimeSeriesData(15, 4),
];

List<CartesianSeries<TimeSeriesData, int>> getSplineChart() {
  return <CartesianSeries<TimeSeriesData, int>>[
    SplineSeries(
      dataSource: timeSeriesData,
      xValueMapper: (TimeSeriesData data, _) => data.x,
      yValueMapper: (TimeSeriesData data, _) => data.y,
      splineType: SplineType.monotonic,
      color: Colors.green[700],
      markerSettings: const MarkerSettings(
        color: Color.fromARGB(181, 0, 200, 83),
        isVisible: true,
      ),
      // animationDelay: 150,
      // animationDuration: 800,
    )
  ];
}
