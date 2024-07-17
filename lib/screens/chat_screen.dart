import 'package:flutter/material.dart';

class chatscreen extends StatelessWidget {
  const chatscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Chat'),),
      body: SafeArea(child: Center(child: Text('Chat Screen'),)),
    );
  }
}
