import 'package:smartglobus/routes/app_routes.dart';
import 'package:smartglobus/ui/test_screen/test_screen.dart';
import 'package:smartglobus/ui/videos_screen/videos_screen.dart';

import '../ui/main.dart';

class AppPages {
  static final pages = {
    AppRoutes.initial: (context) => const MainScreen(),
    AppRoutes.videos1: (context) => const VideosPage(),
    AppRoutes.test1: (context) =>  TestPage(),

  };
}