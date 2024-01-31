import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sanberappflutter/Tugas/Tugas11/AccountScreen.dart';
import 'package:sanberappflutter/Tugas/Tugas11/DrawerScreen.dart';
import 'package:sanberappflutter/Tugas/Tugas11/SearchScreen.dart';
import 'package:sanberappflutter/Tugas/Tugas13/AuthScreen.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  _Home_ScreenState createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomeContent(),
    SearchScreen(),
    AccountScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("JobFinder"),
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            ),
          ],
        ),
        drawer: DrawerScreen(),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(16),
            color: Colors.white,
            child: Expanded(
              child: ListView(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Let's Find",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w800),
                      ),
                      Icon(
                        Icons.notifications,
                        color: Colors.grey,
                      ),
                    ],
                  ),
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
                  jobsItem(context),
                  Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xff475BD8),
                      border: Border.all(color: Color(0xff475BD8)),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextButton(
                      onPressed: () {
                        _signOut(context);
                        print(
                            "User signed out: ${FirebaseAuth.instance.currentUser!.email}");
                      },
                      child: const Text(
                        "Sign Out",
                        style: TextStyle(
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
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

  Future<void> _signOut(BuildContext context) async {
    try {
      await FirebaseAuth.instance.signOut();
      // Navigate to the login or authentication screen after sign-out
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Auth_Screen()));

      // Show snackbar after successful sign-out
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Signed Out!"),
          behavior: SnackBarBehavior.floating,
          duration: Duration(seconds: 3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      );
    } catch (e) {
      // Handle sign-out errors
      print("Error signing out: $e");

      // Show snackbar for sign-out failure
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Sign Out failed: $e"),
          behavior: SnackBarBehavior.floating,
          duration: Duration(seconds: 3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      );
    }
  }
}
