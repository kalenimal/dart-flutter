import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/ticket_view.dart';
import 'package:flutter_application_1/screens/utils/app_info_list.dart';
import 'package:flutter_application_1/screens/utils/app_styles.dart';
import 'package:gap/gap.dart';

import 'hotels_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Styles.bgColor,
        body: ListView(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Good morning", style: Styles.headlineStyle3),
                          const Gap(5),
                          Text("Book Tickets", style: Styles.headlineStyle),
                        ]),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                  'assets/images/airplane-pic.webp'))),
                    )
                  ],
                ),
                const Gap(25),
                Container(
                  decoration: BoxDecoration(color: const Color(0xFFF4F6Fd),
                  borderRadius: BorderRadius.circular(10)),
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular,
                          color: Color(0xFFBFC205)),
                      Text(
                        "search",
                        style: Styles.headlineStyle4,
                      )
                    ],
                  ),
                ),
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Upcoming flyghts', style: Styles.headlineStyle2),
                    InkWell(
                      onTap: (){
                        print('u r tapped');
                      },
                      child: Text('View all', style: Styles.textStyle.copyWith(color: Styles.primaryColor)),
                    )
                  ],
                )
              ]),
            ),
            const Gap(15),
             SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: const[
                TicketView(),
                TicketView(),
              ]),
             ),
            const Gap(15),
             Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hotels", style: Styles.headlineStyle2),
                InkWell(
                  child: Text("View all", style: Styles.textStyle.copyWith(color: Styles.primaryColor))
                )
              ],
             )
            ),
            const Gap(15),
            SingleChildScrollView(
              padding: const EdgeInsets.only(left: 20),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: hotelList.map((i) => HotelsScreen(hotel: i)).toList(),
              ),
            ),
            const Gap(15)
          ],
        ));
  }
}
