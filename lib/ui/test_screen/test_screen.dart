import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:smartglobus/settings/appTheme.dart';
import 'package:smartglobus/ui/main_screen/main_screen.dart';
import 'package:smartglobus/utils/utils.dart';

import '../main.dart';

class TestPage extends StatelessWidget {
  TestPage({Key? key}) : super(key: key);
  List<String> continents = [
    "Asia",
    "Africa",
    "North America",
    "South America",
    "Antarctica",
    "Europe",
    "Australia",
    "Pacific Ocean",
    "Atlantic Ocean",
    "Indian Ocean",
    "Arctic Ocean",
  ];

  @override
  Widget build(BuildContext context) {
    double h = Utils.height(context);
    double w = Utils.width(context);
    return Scaffold(
      backgroundColor: AppTheme.whiteColor,
      body: ListView.builder(
        itemCount: continents.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => MainPage(),
            child: ListTile(
              leading: CircleAvatar(
                child: Text(
                  continents[index][0],
                  style: TextStyle(
                    color: AppTheme.blackColor,
                    fontSize: 24 * h,
                    letterSpacing: 0.5 * w,
                    fontWeight: FontWeight.w500,
                    fontFamily: AppTheme.roboto,
                  ),
                ),
              ),
              title: Text(
                continents[index],
                style: TextStyle(
                  color: AppTheme.darkBlueColor,
                  fontSize: 24 * h,
                  letterSpacing: 0.5 * w,
                  fontWeight: FontWeight.w500,
                  fontFamily: AppTheme.roboto,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
