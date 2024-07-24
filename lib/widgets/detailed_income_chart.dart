import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_admin_dashboard/core/utils/app_styles.dart';

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
          value: 40,
          titlePositionPercentageOffset: touchedIndex == 0 ? 1.5 : null,
          title: touchedIndex == 0 ? 'Design service' : '40%',
          radius: touchedIndex == 0 ? 60 : 50,
          color: const Color(0xff208BC7),
          titleStyle: AppStyles.styleMedium16(context)
              .copyWith(color: touchedIndex == 0 ? null : Colors.white),
        ),
        PieChartSectionData(
          value: 25,
          titlePositionPercentageOffset: touchedIndex == 1 ? 2.2 : null,
          title: touchedIndex == 1 ? 'Design product' : '25%',
          radius: touchedIndex == 1 ? 60 : 50,
          color: const Color(0xff4DB7F2),
          titleStyle: AppStyles.styleMedium16(context)
              .copyWith(color: touchedIndex == 1 ? null : Colors.white),
        ),
        PieChartSectionData(
          value: 20,
          titlePositionPercentageOffset: touchedIndex == 2 ? 1.4 : null,
          title: touchedIndex == 2 ? 'Product royalty' : '20%',
          radius: touchedIndex == 2 ? 60 : 50,
          color: const Color(0xff064060),
          titleStyle: AppStyles.styleMedium16(context)
              .copyWith(color: touchedIndex == 2 ? null : Colors.white),
        ),
        PieChartSectionData(
          value: 22,
          titlePositionPercentageOffset: touchedIndex == 3 ? 1.5 : null,
          title: touchedIndex == 3 ? 'Other' : '22%',
          radius: touchedIndex == 3 ? 60 : 50,
          color: const Color(0xFFE2DECD),
          titleStyle: AppStyles.styleMedium16(context)
              .copyWith(color: touchedIndex == 3 ? null : Colors.white),
        ),
      ],
    );
  }
}
