import 'package:bottomnav_flutter/controllers/chat_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class chatscreen extends StatelessWidget {
   chatscreen({super.key});

  final chatController _chatPutController = Get.put(chatController());

  @override
  Widget build(BuildContext context) {



    return Scaffold(appBar: AppBar(title: Text('Chat'),),
      body: SafeArea(child: Center(child: Text('Chat Screen'),)),
    );
  }
}
