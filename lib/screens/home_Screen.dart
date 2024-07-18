import 'package:bottomnav_flutter/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class homescreen extends StatelessWidget {
  homescreen({super.key});

  final homeController _homePutController = Get.put(homeController());

  @override
  Widget build(BuildContext context) {
    homeController.to.homestartfunc();
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: SafeArea(child: Center(child: Obx(() {
        return _homePutController.homepageIsLoading
            ? CircularProgressIndicator(
                color: Colors.green,
              )
            : Text('Home Screen');
      }))),
    );
  }
}
