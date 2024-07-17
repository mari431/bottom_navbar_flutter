import 'package:flutter/material.dart';

class searchscreen extends StatelessWidget {
  const searchscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Search'),),
      body: SafeArea(child: Center(child: Text('Search Screen'),)),
    );
  }
}
