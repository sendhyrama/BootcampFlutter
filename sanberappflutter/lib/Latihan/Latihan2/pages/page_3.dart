import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanberappflutter/Latihan/Latihan2/routes/route_name.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('Page 3'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(RouteName.page_2);
                },
                child: Text("Back to Page 2"),
              )
            ],
          ),
        ));
  }
}
