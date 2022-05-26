import 'package:bank_system/data.dart';
import 'package:flutter/material.dart';
 class WalletHeader extends StatelessWidget {
   const WalletHeader({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return Container(
       margin: const EdgeInsets.symmetric(horizontal: 20.0),
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [const Text("My wallet",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
         Container(
           height: 50,
           width: 50,
           decoration: BoxDecoration(boxShadow: customShadow,color: PrimaryColor,shape: BoxShape.circle),
           child: Stack(
             children: [
               Center(
                 child: Container(
                   decoration: const BoxDecoration(color: Colors.deepOrange,shape: BoxShape.circle),
                 ),
               ),
               Center(
                 child: Container(
                   margin: const EdgeInsets.all(6.0),
                   decoration: BoxDecoration(color: PrimaryColor,shape: BoxShape.circle),
                 ),
               ),
               const Center(
                 child: Icon(Icons.notifications),
               )
             ],
           ),
         ),
         ],
       ),
     );
   }
 }
