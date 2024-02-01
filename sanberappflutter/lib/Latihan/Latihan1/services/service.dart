import 'dart:async';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:sanberappflutter/Latihan/Latihan1/models/post_model.dart';

class Services {
  Future<List<Postmodel>?> getAllPosts() async {
    try {
      var response = await http
          .get(Uri.parse("https://jsonplaceholder.typicode.com/posts"))
          .timeout(
        const Duration(seconds: 10),
        onTimeout: () {
          throw TimeoutException("Connection timed out. Please try again.");
        },
      );

      if (response.statusCode == 200) {
        List jsonResponse = convert.jsonDecode(response.body);
        return jsonResponse.map((e) => Postmodel.fromJson(e)).toList();
      } else {
        return null;
      }
    } on TimeoutException catch (_) {
      print("Response timeout");
      return null;
    }
  }
}
