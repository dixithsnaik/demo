import 'package:get/get.dart';
import 'package:new_demo/counter_controller.dart';

class InitialBindings implements Bindings {
  @override
  void dependencies() {
    initialise();
  }

  Future<void> initialise() async {
    Get.put(
      CounterController(),
    );
  }
}
