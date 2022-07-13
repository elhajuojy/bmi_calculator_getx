import 'package:get/get.dart';

abstract class HomePageController extends GetxController {
  calculate();
}

class HomePageControllerImp extends HomePageController {
  @override
  calculate() {
    throw UnimplementedError();
  }
}
