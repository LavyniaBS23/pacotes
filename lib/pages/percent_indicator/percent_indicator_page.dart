import 'package:flutter/material.dart';
import 'package:pacotes/shared/widgets/custom_drawer.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class PercentIndicatorPage extends StatefulWidget {
  const PercentIndicatorPage({Key? key}) : super(key: key);

  @override
  State<PercentIndicatorPage> createState() => _PercentIndicatorPageState();
}

class _PercentIndicatorPageState extends State<PercentIndicatorPage> {

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text("Percent indicator")),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment:  MainAxisAlignment.start,
            children: [
              CircularPercentIndicator(
                  radius: 60.0,
                  lineWidth: 5.0,
                  percent: 0.5,
                  center:const Text("100%"),
                  progressColor: Colors.green,
                ),
                CircularPercentIndicator(
                radius: 130.0,
                animation: true,
                animationDuration: 1200,
                lineWidth: 15.0,
                percent: 0.4,
                center: const Text(
                  "40 hours",
                  style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                ),
                circularStrokeCap: CircularStrokeCap.round,
                backgroundColor: Colors.yellow,
                progressColor: Colors.red,
              ),
              LinearPercentIndicator(
                width: MediaQuery.of(context).size.width - 50,
                animation: true,
                lineHeight: 20.0,
                animationDuration: 2000,
                percent: 0.9,
                center: const Text("90.0%"),
                linearStrokeCap: LinearStrokeCap.roundAll,
                progressColor: Colors.greenAccent,
              ),

            ],
        ),
    
      ),
    );
  }
}