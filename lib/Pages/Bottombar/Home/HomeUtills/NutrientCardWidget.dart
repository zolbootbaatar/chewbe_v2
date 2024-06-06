import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
// ignore_for_file: avoid_unnecessary_containers

// ignore_for_file: must_be_immutable

class NutrientCard extends HookConsumerWidget {
  NutrientCard({
    this.isCalories,
    this.height,
    this.nutrient,
    this.value,
    super.key,
  });

  String? nutrient;
  String? value;
  double? height;
  bool? isCalories = false;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<ChartData> chartData = [
      ChartData('David', 25, const Color(0xff1D976C)),
      ChartData('David', 25, const Color(0xfff0f0f0)),
    ];

    return Container(
      height: height,
      width: MediaQuery.of(context).size.width * 0.45,
      // padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xffffffff),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.energy_savings_leaf,
                      size: 30,
                      color: Color(0xff1D976C),
                    ),
                    Text(
                      nutrient!,
                      style: const TextStyle(
                        color: Color(0xff8C8C8C),
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
                const Icon(
                  Icons.chevron_right,
                  size: 30,
                  color: Color(0xff1D976C),
                ),
              ],
            ),
            isCalories!
                ? Container(
                    height: 150,
                    width: 150,
                    child: SfCircularChart(
                      annotations: [
                        CircularChartAnnotation(
                          widget: Container(
                            child: Text(
                              value!,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Color(0xff8C8C8C),
                              ),
                            ),
                          ),
                        ),
                      ],
                      series: <CircularSeries>[
                        DoughnutSeries<ChartData, String>(
                          dataSource: chartData,
                          pointColorMapper: (ChartData data, _) => data.color,
                          xValueMapper: (ChartData data, _) => data.x,
                          yValueMapper: (ChartData data, _) => data.y,
                          innerRadius: '80%',
                        )
                      ],
                    ),
                  )
                : Container(),
            !isCalories!
                ? Text(
                    value!,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xff8C8C8C),
                    ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y, this.color);
  final String x;
  final double y;
  final Color color;
}
