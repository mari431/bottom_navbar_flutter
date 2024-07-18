import 'package:bottomnav_flutter/controllers/search_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class searchscreen extends StatelessWidget {
  searchscreen({super.key});

  final searchController _searchPutController = Get.put(searchController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Search'),),
      body: SafeArea(child: Center(child: Text('Search Screen'),)),
    );
  }
}
