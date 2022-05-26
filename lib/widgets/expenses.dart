import 'package:bank_system/data.dart';
import 'package:bank_system/widgets/pieChart.dart';
import 'package:flutter/material.dart';

class ExpensesSection extends StatelessWidget {
  const ExpensesSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0),
          child: Text('Expenses',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
        Row(
          children: [
            Expanded(
              flex: 5,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: expenses
                    .map(
                      (value) => Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 5.0,
                              backgroundColor: pieColors[expenses.indexOf(value)],
                            ),
                            SizedBox(width: 5.0),

                            Text(
                              value['name'],
                              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                            ),
                          ],
                        ),
                      ),
                     ).toList(),
              ),
            ),),
            Expanded(
              flex: 6,
              child: PieChart(),),
          ],
        ),
      ],
    );
  }
}
