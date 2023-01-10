import 'package:flutter/material.dart';
import 'package:smartglobus/utils/utils.dart';

class ContentsWidget extends StatelessWidget {
  final String continentName;

  const ContentsWidget({Key? key, required this.continentName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = Utils.width(context);
    double h = Utils.height(context);

    return Container(
      width: double.infinity,
      height: 32 * h,
      margin: EdgeInsets.symmetric(
        horizontal: 8 * w,
        vertical: h * 8,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8 * w),
      ),
      child: Text(continentName),
    );
  }
}
