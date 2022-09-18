import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/utils/app_layout.dart';
import 'package:flutter_application_1/screens/utils/app_styles.dart';
import 'package:gap/gap.dart';


class HotelsScreen extends StatelessWidget {
  final Map<String, dynamic> hotel;

  const HotelsScreen({Key? key, required this.hotel}) : super(key: key);


  @override
  Widget build(BuildContext context) {
   final size = AppLayout.getSize(context);

    return Container(
      width: size.width*0.60,
      height: 350,
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        color: Styles.primaryColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
          color: Colors.grey.shade200,
          blurRadius: 20,
          spreadRadius: 10
        )
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
               color: Styles.primaryColor,
               image:  DecorationImage(
                fit: BoxFit.cover,
                image:  AssetImage('assets/images/${hotel['image']}')
              ),
            ),
          ),
          const Gap(10),
          Text(hotel['place'], style: Styles.headlineStyle2.copyWith(color: Styles.kakiColor),),
          const Gap(5),
          Text(hotel['destination'], style: Styles.headlineStyle3.copyWith(color: Colors.white),),
          const Gap(8),
          Text('${hotel['price']}\$/night', style: Styles.headlineStyle.copyWith(color: Styles.kakiColor),),
        ],
      ),
    );
  }
}