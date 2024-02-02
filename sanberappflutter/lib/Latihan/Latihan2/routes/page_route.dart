import 'package:get/get.dart';
import 'package:sanberappflutter/Latihan/Latihan2/pages/page_1.dart';
import 'package:sanberappflutter/Latihan/Latihan2/pages/page_2.dart';
import 'package:sanberappflutter/Latihan/Latihan2/pages/page_3.dart';
import 'package:sanberappflutter/Latihan/Latihan2/routes/route_name.dart';

class pageRouteApp {
  static final pages = [
    GetPage(
      name: RouteName.page_1,
      page: () => Page1(),
    ),
    GetPage (
      name: RouteName.page_2,
      page: ()=> Page2(),
    ),
    GetPage(
      name: RouteName.page_3,
      page: ()=> Page3(),
      ),
  ];
}
