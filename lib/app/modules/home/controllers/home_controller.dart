import 'package:backgorund_workmanager/app/services/background_service.dart';
import 'package:get/get.dart';
import 'package:workmanager/workmanager.dart';

class HomeController extends GetxController {
  void onStopBackgroundService() {
    Workmanager().cancelByTag("DRIVER_POSITION_TAG");
  }

  void onStartBackgroundService() async {
    PositionBackgroundService().initilize();
  }
}
