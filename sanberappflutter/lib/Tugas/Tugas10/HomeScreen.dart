import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          margin: EdgeInsets.only(top: 40),
          color: Colors.white,
          child: Expanded(
            child: ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Let's Find",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                    ),
                    Icon(
                      Icons.notifications,
                      color: Colors.grey,
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Your Dream Jobs",
                    style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  height: 50,
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration.collapsed(
                        hintText: "Search jobs or Position"),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Jobs For You",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
                const SizedBox(height: 40),
                jobsItem(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container jobsItem(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      child: Expanded(
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: <Widget>[
            jobContainer("assets/img/gojek.png", "Digital Marketing",
                "1-3 Year Experience", "FullTime", "Senior"),
            jobContainer("assets/img/shopee.png", "Content Creator",
                "1-3 Year Experience", "FullTime", "Internship"),
            jobContainer("assets/img/bukalapak.png", "Front End Dev",
                "1-3 Year Experience", "FullTime", "Senior"),
            jobContainer("assets/img/blibli.png", "UX Designer",
                "1-3 Year Experience", "FullTime", "Senior"),
          ],
        ),
      ),
    );
  }

  Container jobContainer(String image, String title, String experience,
      String position1, String position2) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Color(0xffE9FFEB),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            image,
            height: 20,
            width: 20,
          ),
          SizedBox(height: 16),
          Text(
            title,
            style: titleStyle(),
          ),
          SizedBox(height: 16),
          Text(
            experience,
            style: subTitle(),
          ),
          SizedBox(height: 16),
          Row(
            children: [
              Text(
                position1,
                style: positionText(),
              ),
              SizedBox(width: 16),
              Text(
                position2,
                style: positionText(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  TextStyle positionText() {
    return TextStyle(color: Colors.grey, fontWeight: FontWeight.w400);
  }

  TextStyle subTitle() => TextStyle(fontWeight: FontWeight.w500);

  TextStyle titleStyle() {
    return TextStyle(fontSize: 15, fontWeight: FontWeight.w700);
  }
}
