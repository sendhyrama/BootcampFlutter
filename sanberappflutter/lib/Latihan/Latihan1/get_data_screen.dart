import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:sanberappflutter/Latihan/Latihan1/controllers/app_controller.dart';

class GetDataScreenStateManagement extends StatelessWidget {
  const GetDataScreenStateManagement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(AppController());

    return Scaffold(
      appBar: AppBar(
        title: Text("State Management GetX"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Obx(
              () => controller.postloading.value
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : ListView.builder(
                      itemCount: controller.getposts.length,
                      itemBuilder: (context, index) {
                        var item = controller.getposts[index];
                        return Card(
                          child: ListTile(
                            title: Text(item.title),
                            subtitle: Text(item.body),
                            leading: Text(item.id.toString()),
                          ),
                        );
                      },
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
