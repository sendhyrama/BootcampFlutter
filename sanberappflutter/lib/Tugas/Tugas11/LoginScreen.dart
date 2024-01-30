import 'package:flutter/material.dart';
import 'package:sanberappflutter/Tugas/Tugas11/HomeScreen.dart';

class Login_Screen extends StatelessWidget {
  const Login_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/img/logo.png",
                height: 80,
                width: 80,
              ),
              const SizedBox(height: 10),
              const Text(
                "JobNest",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                    color: Color(0xff475BD8)),
              ),
              const SizedBox(height: 10),
              Container(
                height: 50,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff475BD8)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  decoration:
                      InputDecoration.collapsed(hintText: "Email"),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 50,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff475BD8)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  decoration:
                      InputDecoration.collapsed(hintText: "Password"),
                ),
              ),
              const SizedBox(height: 10),
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
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return const Home_Screen();
                  }));
                  },
                  child: const Text(
                    "Login",
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
    );
  }
}
