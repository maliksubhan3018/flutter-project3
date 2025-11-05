

import 'package:figma_project/classs21.dart';
import 'package:figma_project/config/route_name.dart';
import 'package:figma_project/data_table.dart';
import 'package:figma_project/my_screens%20.dart';

import 'package:get/get.dart';

class AppRoutes {
  static routes() => [
   // GetPage(name: MyPagesName.splash, page: () => const OnboardingScreen()),
   // GetPage(name: MyPagesName.myhero, page: () => const Myhero()),
    //GetPage(name: MyPagesName.myprofile, page: () => const Myprofile()),
    GetPage(name: MyPagesName.class21, page: () => const Classs21()),
    GetPage(name: MyPagesName.myScreens, page: () => const MyScreens()),
    GetPage(name: MyPagesName.dataTable, page: () => const DataTable()),
   
  ];
}