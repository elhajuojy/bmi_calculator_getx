import 'package:bmi_calculator/Model/calmodel.dart';
import 'package:get/get.dart';

abstract class HomePageController extends GetxController {
  calculate();
  changeProgr(double index);
}

class HomePageControllerImp extends HomePageController {
  double changeProg = 0;
  double changeHeight = 1;

  @override
  calculate() {
    throw UnimplementedError();
  }

  @override
  changeProgr(double index) {
    changeProg = 0 + index;
    changeHeight = index * 200;
    print(changeHeight);
    // print(changeProg);
    update();
  }
}
