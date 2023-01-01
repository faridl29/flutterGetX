import 'package:get/get.dart';
import 'package:appName/feature/example/controller/example_controller.dart';

class ExampleBinding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut(() => ExampleController());
  }

}