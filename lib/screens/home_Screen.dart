import 'package:flutter/material.dart';

class homescreen extends StatelessWidget {
  const homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Home'),),
    body: SafeArea(
        child: Center(child: Text('Home Screen'),)),
    );
  }
}
