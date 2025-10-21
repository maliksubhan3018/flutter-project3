

import 'package:figma_project/classs21.dart';
import 'package:figma_project/config/route_name.dart';

import 'package:get/get.dart';

class AppRoutes {
  static routes() => [
   // GetPage(name: MyPagesName.splash, page: () => const OnboardingScreen()),
   // GetPage(name: MyPagesName.myhero, page: () => const Myhero()),
    //GetPage(name: MyPagesName.myprofile, page: () => const Myprofile()),
    GetPage(name: MyPagesName.class21, page: () => const Classs21()),
   
  ];
}