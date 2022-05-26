import 'package:bank_system/data.dart';
import 'package:bank_system/widgets/cardDetails.dart';
import 'package:flutter/material.dart';

class CardSection extends StatelessWidget {
  const CardSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0),
          alignment: Alignment.topLeft,
          child: const Text(
            'Selected card',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
          ),
        ),
        Expanded(
            child: ListView.builder(
                itemCount: 2,
                scrollDirection: Axis.horizontal,
                itemBuilder: (cntext, i) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
                    decoration: BoxDecoration(
                      color: PrimaryColor,
                      boxShadow: customShadow,
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Stack(
                      children: [
                        Positioned.fill(
                          top: 150,
                          bottom: -200,
                          child: Container(
                            decoration: BoxDecoration(
                              boxShadow: customShadow,
                              color: Colors.white38,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),

                        Positioned.fill(
                          left: -300,
                          top: -100,
                          bottom: -100,
                          child: Container(
                            decoration: BoxDecoration(
                              boxShadow: customShadow,
                              color: Colors.white24,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                    CardDetails(),
                      ],
                    ),
                  );
                }))
      ],
    );
  }
}
