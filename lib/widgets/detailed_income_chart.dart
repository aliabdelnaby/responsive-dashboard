import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<DetailedIncomeChart> {
  int touchedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getChartData(),
      ),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      sectionsSpace: 0,
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pieTouchResponse) {
          setState(() {
            if (pieTouchResponse == null ||
                pieTouchResponse.touchedSection == null) {
              touchedIndex = -1;
              return;
            }
            touchedIndex = pieTouchResponse.touchedSection!.touchedSectionIndex;
          });
        },
      ),
      sections: [
        PieChartSectionData(
          radius: touchedIndex == 0 ? 60 : 50,
          showTitle: false,
          value: 40,
          color: const Color(0xff208BC7),
        ),
        PieChartSectionData(
          radius: touchedIndex == 1 ? 60 : 50,
          showTitle: false,
          value: 25,
          color: const Color(0xff4DB7F2),
        ),
        PieChartSectionData(
          radius: touchedIndex == 2 ? 60 : 50,
          showTitle: false,
          value: 20,
          color: const Color(0xff064060),
        ),
        PieChartSectionData(
          radius: touchedIndex == 3 ? 60 : 50,
          showTitle: false,
          value: 22,
          color: const Color(0xFFE2DECD),
        ),
      ],
    );
  }
}
