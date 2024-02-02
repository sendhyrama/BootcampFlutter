import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sanberappflutter/Latihan/Latihan2/routes/route_name.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Page 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.toNamed(RouteName.page_2);
              },
              child: Text("Go to Page 2"),
            )
          ],
        ),
      ),
    );
  }
}
