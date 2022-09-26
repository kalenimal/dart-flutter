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
        padding: const EdgeInsets.symmetric(horizontal: 20),
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
              style: ElevatedButton.styleFrom(
                  primary: Colors.blue.shade700,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  padding: const EdgeInsets.all(10)),
              /* shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)), */
              child: Text(
                'Find tickets',
                style: Styles.headlineStyle2.copyWith(color: Colors.white),
              )),
          const Gap(40),
          Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Upcoming flights',
                    style: Styles.headlineStyle2.copyWith(fontSize: 25),
                  ),
                  InkWell(
                    child: Text('View all', style: Styles.headlineStyle3),
                  )
                ]),
          ),
          const Gap(20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  height: 350,
                  clipBehavior: Clip.hardEdge,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Wrap(
                    children: [
                      Container(
                        clipBehavior: Clip.antiAlias,
                        width: double.infinity,
                        height: 150,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/lake.jpg'))),
                      ),
                      const Gap(15),
                      Text(
                          'It is a long established fact that a reader will be distracted by the readable content of a page when',
                          style: Styles.headlineStyle2),
                    ],
                  ),
                ),
              ),
              const Gap(10),
              Expanded(
                  child: Column(
                   /*  mainAxisAlignment: MainAxisAlignment.start, */
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Stack(
                    children: [
                      Container(
                     padding: const EdgeInsets.all(10), 
                      decoration: BoxDecoration(
                          color: Colors.lightGreen.shade200,
                          borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                        Text('Discount\n for survey', style: Styles.headlineStyle2.copyWith(color: Colors.white)),
                        const Gap(5),
                        Text('Many desktop publishing packages and web page editors now use Lorem Ipsum a', style: Styles.headlineStyle3.copyWith(color: Colors.white)),
                      ], 
                    ),
                    ),
                      Positioned(
                        right: -40,
                        top: -40,
                        child: 
                      Container(
                          padding: const EdgeInsets.all(30),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 18, color: Colors.lightGreen.shade500),
                            color: Colors.transparent
                          ),
                        ))
                    ],
                  ),
                  const Gap(15),
                  Container(
                    height: 170,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.red.shade300
                    ),
                    child: Column(
                     children: [
                      Text('Take love', style: Styles.headlineStyle2.copyWith(color: Colors.white)),
                      const Gap(20),
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: '😍',
                              style: TextStyle(fontSize: 28)
                            ),
                            TextSpan(
                              text: '😘',
                              style: TextStyle(fontSize: 40)
                            ),
                             TextSpan(
                              text: '🥰',
                              style: TextStyle(fontSize: 28)
                            )
                          ]
                        ),
                      ),
                     ],
                    ),
                  ),
                   const Gap(40)
                ],
              ))
            ],
          )
        ],
      ),
    );
  }
}
