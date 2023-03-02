import 'package:workmanager/workmanager.dart';

import '../../backgorund_service_key.dart';

class PositionBackgroundService {
  Future<PositionBackgroundService> initilize({int? frequency}) async {
    var uniqueId = DateTime.now().microsecondsSinceEpoch.toString();
    await Workmanager().registerOneOffTask(
      uniqueId,
      BackgroundServiceKey.sendDriverPostition,
      tag: "DRIVER_POSITION_TAG",
      // Repeat function in 5 second
      initialDelay: Duration(seconds: frequency ?? 0),
      inputData: {
        'int': 1,
        'bool': true,
        'double': 1.0,
        'string': 'string',
        'array': [1, 2, 3],
      },
    );
    return this;
  }
}
