import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smartglobus/ui/test_screen/test_screen.dart';
import 'package:smartglobus/ui/videos_screen/videos_screen.dart';
import 'package:smartglobus/utils/utils.dart';
import '../settings/appTheme.dart';
import 'main_screen/main_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selected = 0;
  List<Widget> pages = [
    const MainPage(),
    const VideosPage(),
    TestPage(),
  ];

  @override
  Widget build(BuildContext context) {
    double h = Utils.height(context);

    return Scaffold(
      body: pages[_selected],
      backgroundColor: AppTheme.whiteColor,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selected,
        onTap: (_index) {
          setState(() {
            _selected = _index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/bottom/continent3.svg",
              height: 32 * h,
            ),
            label: "Globe",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/bottom/videos1.svg",
              height: 32 * h,
            ),
            label: "Videos",
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/icons/bottom/test1.svg",
              height: 32 * h,
            ),
            label: "Tests",
          ),
        ],
      ),
    );
  }
}
