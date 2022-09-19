import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'utils/app_styles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        children: [
          const Gap(40),
          Text('What are \n you looking for?',
              style: Styles.headlineStyle.copyWith(fontSize: 35)),
          const Gap(20),
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
                    child: Text('Airplane tickets',
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
                    Center(child: Text('Hotels', style: Styles.headlineStyle4)),
              ))
            ]),
          ),
          const Gap(20),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(children: [
              Container(
                margin: const EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.flight_takeoff_rounded,
                  color: Colors.grey.shade600,
                ),
              ),
              Text(
                'Departure',
                style: Styles.headlineStyle3,
              )
            ]),
          ),
          const Gap(20),
          Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(children: [
              Container(
                margin: const EdgeInsets.only(right: 10),
                child: Icon(
                  Icons.flight_land_rounded,
                  color: Colors.grey.shade600,
                ),
              ),
              Text(
                'Arrival',
                style: Styles.headlineStyle3,
              )
            ]),
          ),
          const Gap(20),
          ElevatedButton(
              onPressed: () => print('pressed'),
              style: ElevatedButton.styleFrom(primary: Colors.blue.shade700,
              shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.all(10)
              ),
              /* shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)), */
              child: Text(
                'Find tickets',
                style: Styles.headlineStyle2.copyWith(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
