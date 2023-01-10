import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smartglobus/settings/appTheme.dart';
import 'package:smartglobus/utils/utils.dart';
import 'package:smartglobus/widgets/main_screen/navigation_drawer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../widgets/main_screen/information_widget.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int activeIndex = 0;

  final images = [
    "assets/images/globe1.jpg",
    "assets/images/globe1.jpg",
    "assets/images/globe1.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    double h = Utils.height(context);
    double w = Utils.width(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Smart Globus",
          style: TextStyle(
            color: AppTheme.whiteColor,
            fontFamily: AppTheme.roboto,
            fontWeight: FontWeight.w500,
            fontSize: 24 * h,
            letterSpacing: 0.5,
          ),
        ),
        backgroundColor: AppTheme.darkBlueColor,
        centerTitle: true,
        elevation: 0.5,
      ),
      drawer: NavigationDrawer(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              CarouselSlider.builder(
                options: CarouselOptions(
                  height: 300 * h,
                  // autoPlay: true,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                  onPageChanged: (index, reason) {
                    setState(() {
                      activeIndex = index;
                    });
                  },
                  // reverse: true,
                  viewportFraction: 1,
                  // autoPlayInterval: const Duration(seconds: 5),
                ),
                itemCount: images.length,
                itemBuilder: (context, index, realIndex) {
                  final image = images[index];
                  return SizedBox(
                    width: double.infinity,
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                    ),
                  );
                },
              ),
              SizedBox(height: 16 * h),
              AnimatedSmoothIndicator(
                activeIndex: activeIndex,
                count: images.length,
                effect: JumpingDotEffect(
                  dotHeight: 16 * h,
                  dotWidth: 16 * w,
                ),
              ),
              SizedBox(height: 16 * h),
              Row(
                children: const [
                  Spacer(),
                  InformationWidget(
                    upWord: "assets/icons/weight1.svg",
                    bottomWord: "5 KG",
                  ),
                  Spacer(),
                  InformationWidget(
                    upWord: "assets/icons/bottom/globe2.svg",
                    bottomWord: "15^2",
                  ),
                  Spacer(),
                ],
              ),
              SizedBox(height: 32 * h),
              Row(
                children: const [
                  Spacer(),
                  InformationWidget(
                    upWord: "assets/icons/height1.svg",
                    bottomWord: "35 SM",
                  ),
                  Spacer(),
                  InformationWidget(
                    upWord: "assets/icons/bottom/high_globe.svg",
                    bottomWord: "153 ",
                  ),
                  Spacer(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
