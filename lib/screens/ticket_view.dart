import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/utils/app_layout.dart';
import 'package:flutter_application_1/screens/utils/app_styles.dart';
import 'package:flutter_application_1/widgets/thick_container.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return SizedBox(
      width: size.width*0.85,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Color(0xFF526799),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(21),
                      topRight: Radius.circular(21))),
              padding: const EdgeInsets.all(16),
              child: Column(children: [
                Row(
                  children: [
                    Text("NYC",
                        style: Styles.headlineStyle3
                            .copyWith(color: Colors.white)),
                    Expanded(child: Container()),
                    const ThickContainer(),
                    Expanded(
                        child: Stack(
                      children: [
                        SizedBox(
                          height: 25,
                          child: LayoutBuilder(builder: (BuildContext context,
                              BoxConstraints constraints) {
                            return Flex(
                              direction: Axis.horizontal,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate(
                                  (constraints.constrainWidth() / 6).floor(),
                                  (index) => const Text(
                                        '-',
                                        style: TextStyle(color: Colors.white),
                                      )),
                            );
                          }),
                        ),
                        Center(
                          child: Transform.rotate(
                            angle: 1.5,
                            child: const Icon(Icons.local_airport_rounded,
                                color: Colors.white),
                          ),
                        )
                      ],
                    )),
                    const ThickContainer(),
                    Expanded(child: Container()),
                    Text("LDN",
                        style:
                            Styles.headlineStyle3.copyWith(color: Colors.white))
                  ],
                ),
                const Gap(3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'New-York',
                      style:
                          Styles.headlineStyle4.copyWith(color: Colors.white),
                    ),
                    Text(
                      '8H 30M',
                      style:
                          Styles.headlineStyle3.copyWith(color: Colors.white),
                    ),
                    Text(
                      'London',
                      style:
                          Styles.headlineStyle4.copyWith(color: Colors.white),
                    ),
                  ],
                )
              ]),
            ),
            Container(
              color: Styles.orangeColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(10),
                                bottomRight: Radius.circular(10)),
                            color: Colors.white)),
                  ),
                  Expanded(child: LayoutBuilder(
                    builder:
                        (BuildContext context, BoxConstraints constraints) {
                      return Flex(
                        direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(
                            (constraints.constrainWidth() / 15).floor(),
                            (index) => const Text('-',
                                style: TextStyle(color: Colors.white))),
                      );
                    },
                  )),
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10),
                                bottomLeft: Radius.circular(10)),
                            color: Colors.white)),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  color: Styles.orangeColor,
                  borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21))),
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('1 May', style: Styles.headlineStyle3.copyWith(color: Colors.white),),
                      Text('Date', style: Styles.headlineStyle4.copyWith(color: Colors.white),),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('08:00 AM', style: Styles.headlineStyle3.copyWith(color: Colors.white),),
                      Text('Departure time', style: Styles.headlineStyle4.copyWith(color: Colors.white),),
                    ],
                  ),
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('23', style: Styles.headlineStyle3.copyWith(color: Colors.white),),
                      Text('Number', style: Styles.headlineStyle4.copyWith(color: Colors.white),),
                    ],
                  )
                ]),
            )
          ],
        ),
      ),
    );
  }
}
