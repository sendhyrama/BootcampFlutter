import "package:flutter/material.dart";

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Account Page'),
          automaticallyImplyLeading: false, // Set this property to false
        ),
        body: Center(
          child: Text('Account Screen', style: TextStyle(fontSize: 40)),
        ));
  }
}
