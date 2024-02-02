import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanberappflutter/Latihan/Latihan2/routes/route_name.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('Page 2'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(RouteName.page_3);
                },
                child: Text("Go to Page 3"),
              ),
              ElevatedButton(
                  onPressed: () {
                    Get.toNamed(RouteName.page_1);
                  },
                  child: Text("Back to Page 1")),
            ],
          ),
        ));
  }
}
