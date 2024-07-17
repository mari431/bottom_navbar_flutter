import 'package:flutter/material.dart';

class profilescreen extends StatelessWidget {
  const profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Profile'),),
      body: SafeArea(child: Center(child: Text('Profile Screen'),)),
    );
  }
}
