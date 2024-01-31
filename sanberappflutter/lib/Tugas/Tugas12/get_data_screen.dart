import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:sanberappflutter/Tugas/Tugas12/get_data_detail_screen.dart';

class GetDataScreen extends StatefulWidget {
  const GetDataScreen({Key? key}) : super(key: key);

  @override
  State<GetDataScreen> createState() => _GetDataScreenState();
}

class _GetDataScreenState extends State<GetDataScreen> {
  final String url = "https://reqres.in/api/users?page=2";
  List? data;

  @override
  void initState() {
    getRefreshData();
    super.initState();
  }

  Future<void> getRefreshData() async {
    await getJsonData(context);
  }

  Future<void> getJsonData(BuildContext context) async {
    try {
      var response = await http
          .get(Uri.parse(url), headers: {"Accept": "application/json"});
      // Check the API response
      print(response.body);

      if (response.statusCode == 200) {
        setState(() {
          var convertDataToJson = jsonDecode(response.body);
          data = convertDataToJson['data'];
        });
      } else {
        // Handle non-200 status code, if needed
        print("Failed to load data. Status Code: ${response.statusCode}");
      }
    } catch (error) {
      // Handle errors during the API call
      print('Error: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get Data from Reqres API'),
      ),
      body: RefreshIndicator(
        onRefresh: getRefreshData,
        child: data == null
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: data == null ? 0 : data!.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => GetDataDetailScreen(
                                    value: data![index]['id']),
                              ),
                            );
                            print(data![index]['id']);
                          },
                          child: Padding(
                            padding: EdgeInsets.all(16.0),
                            child: Row(
                              children: [
                                ClipRRect(
                                  child: Image.network(
                                    data![index]['avatar'],
                                    height: 80,
                                    width: 80,
                                  ),
                                ),
                                SizedBox(width: 10),
                                Column(
                                  children: [
                                    Text(data![index]['first_name'] +
                                        " " +
                                        data![index]['last_name']),
                                    Text(data![index]['email']),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        Divider(),
                      ],
                    ),
                  );
                },
              ),
      ),
    );
  }
}
