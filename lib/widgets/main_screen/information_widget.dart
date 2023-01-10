import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smartglobus/settings/appTheme.dart';
import 'package:smartglobus/utils/utils.dart';

class InformationWidget extends StatelessWidget {
  final String upWord;
  final String bottomWord;

  const InformationWidget({
    Key? key,
    required this.upWord,
    required this.bottomWord,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = Utils.height(context);
    double w = Utils.width(context);
    return Container(
      padding: EdgeInsets.all(4 * w),
      height: 128 * h,
      width: 128 * w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16 * w),
        color: Colors.lightGreen,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 2), // changes position of shadow
          ),
        ],
        border: Border.all(
          color: AppTheme.darkBlueColor,
          width: 1 * w,
          style: BorderStyle.solid,
        ),
      ),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            SvgPicture.asset(
              upWord,
              height: 50 * h,
              width: 50 * w,
            ),
            const Spacer(),
            Text(
              bottomWord,
              style: TextStyle(
                color: AppTheme.darkBlueColor,
                fontFamily: AppTheme.roboto,
                fontSize: 32 * h,
                fontWeight: FontWeight.w700,
              ),
            ),
            const Spacer(),

          ],
        ),
      ),
    );
  }
}
