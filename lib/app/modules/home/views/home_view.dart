import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    var controller = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'HomeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: controller.onStartBackgroundService,
            heroTag: 1,
            backgroundColor: Colors.green,
            child: Icon(Icons.play_arrow_rounded),
          ),
          FloatingActionButton(
            onPressed: controller.onStopBackgroundService,
            heroTag: 2,
            backgroundColor: Colors.red,
            child: Icon(Icons.stop_rounded),
          ),
        ],
      ),
    );
  }
}
