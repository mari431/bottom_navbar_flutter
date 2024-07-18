import 'package:bottomnav_flutter/controllers/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class profilescreen extends StatelessWidget {
  profilescreen({super.key});

  final profileController _profilePutController = Get.put(profileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Profile'),),
      body: SafeArea(child: Center(child: Text('Profile Screen'),)),
    );
  }
}
