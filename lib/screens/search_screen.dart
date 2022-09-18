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
          Text('What are \n you looking for?', style: Styles.headlineStyle)
        ],
      ),
    );
  }
}