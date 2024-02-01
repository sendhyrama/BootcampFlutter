import 'package:get/get.dart';
import 'package:sanberappflutter/Latihan/Latihan1/models/post_model.dart';
import 'package:sanberappflutter/Latihan/Latihan1/services/service.dart';

class AppController extends GetxController {
  var getposts = <Postmodel>[].obs;
  Services services = Services();
  var postloading = true.obs;

  @override
  void onInit() {
    callPostMethod();
    super.onInit();
  }

  void callPostMethod() async {
    try {
      postloading.value = true;
      var result = await services.getAllPosts();
      if (result != null) {
        getposts.assignAll(result);
      } else {
        print("null");
      }
    } finally {
      postloading.value = false;
    }
    update();
  }
}
