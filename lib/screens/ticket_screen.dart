


import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/utils/app_styles.dart';
import 'package:gap/gap.dart';


class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children: [
        const Gap(40),
         Text('Tickets', style: Styles.headlineStyle.copyWith(fontSize: 35)),
         const Gap(40),
         Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(50)),
            child: Row(children: [
              Expanded(
                  child: Container(
                padding: const EdgeInsets.all(8),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomLeft: Radius.circular(50)),
                ),
                child: Center(
                    child: Text('Upcoming',
                        style: Styles.headlineStyle4
                            .copyWith(color: Colors.black))),
              )),
              Expanded(
                  child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(50),
                ),
                child:
                    Center(child: Text('Previos', style: Styles.headlineStyle4)),
              ))
            ]),
          )
      ],
    );
  }
}