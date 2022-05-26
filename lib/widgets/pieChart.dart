import 'dart:math';

import 'package:bank_system/data.dart';
import 'package:flutter/material.dart';

class PieChart extends StatelessWidget {
  const PieChart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(shape: BoxShape.circle,boxShadow: customShadow,color: PrimaryColor),
      child: Stack(
        children: [
          CustomPaint(foregroundPainter: PieChartPainter(),),
          Center(
            child: Container(
              height: 70,
              width: 70,
              decoration: BoxDecoration(shape: BoxShape.circle,boxShadow: customShadow,color: PrimaryColor),
            ),
          )
        ],
      ),
    );
  }
}

class PieChartPainter extends CustomPainter{
  @override
  void paint(Canvas canvas,Size size){
    Offset center = Offset(size.width/2,size.height/2);
    double radius = min(size.height,size.width);

    var paint = new Paint()..style=PaintingStyle.stroke..strokeWidth=100;
    double total = 0;
    for (var element in expenses) {
      total+=element['amount'];
    }
    var startRadian = -pi/2;
    for(int i = 0;i<expenses.length;i++){
      var currentExpenses = expenses[i];
      var sweepRadian = (currentExpenses['amount']/total)*2*pi;
      paint.color = pieColors[i];
      canvas.drawArc(Rect.fromCircle(center: center, radius: radius), startRadian, sweepRadian, false, paint);
      startRadian+=sweepRadian;
    }

  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {

    return true;
  }
}