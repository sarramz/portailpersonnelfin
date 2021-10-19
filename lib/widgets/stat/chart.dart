import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';


class MyDonutChart extends StatefulWidget {
  MyDonutChart({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyDonutChartState createState() => _MyDonutChartState();
}

class _MyDonutChartState extends State<MyDonutChart> {
  late List<Data> _chartData;
  void initState(){
    _chartData = getChartData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: SfCircularChart(
        legend: Legend(isVisible: true, overflowMode: LegendItemOverflowMode.wrap),
        series: <CircularSeries> [
          DoughnutSeries<Data,String>(
              dataSource: _chartData,
              xValueMapper: (Data data,_) => data.etat,
              yValueMapper: (Data data,_) => data.nbr,
              dataLabelSettings: DataLabelSettings(isVisible: true)
          )
        ],),
    );
  }

  List<Data> getChartData(){
    final List<Data> chartData = [
      Data('Annulés', 20),
      Data('Faits', 30),
      Data('Programmés', 10),
    ];
    return chartData;
  }
}
class Data {
  Data (this.etat, this.nbr);
  final String etat;
  final int nbr;
}
