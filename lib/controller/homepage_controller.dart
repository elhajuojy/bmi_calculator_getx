import 'dart:developer';

import 'package:bmi_calculator/Model/calmodel.dart';
import 'package:bmi_calculator/core/constant/color.dart';
import 'package:bmi_calculator/view/resulta.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class HomePageController extends GetxController {
  calculate();
  changeProgr(double index);
  changeGenderCardColor();
  changeGenderColorFemale();
}

class HomePageControllerImp extends HomePageController {
  double changeProg = 0;
  double changeHeight = 1;
  late String gender = "Male";

  Color backgroundCardGenderMale = const Color.fromARGB(255, 30, 32, 63);
  Color backgroundCardGenderFemale = const Color.fromARGB(255, 30, 32, 63);
  int weight = 10;
  int age = 10;
  late CalModel model;
  @override
  calculate() {
    model = CalModel(
        geneder: gender == "Male" ? Gender.male : Gender.famle,
        height: changeHeight,
        weghit: weight,
        age: age);

    log(model.age.toString());
    log(model.geneder.toString());
    log(model.height.toString());
    log(model.weghit.toString());
    Get.to(() => const Resulta());
  }

  @override
  changeProgr(double index) {
    changeProg = 0 + index;
    changeHeight = index * 200;
    update();
  }

  incremntWeight() {
    weight++;
    update();
  }

  decerementWeight() {
    weight--;
    update();
  }

  incremntAge() {
    age++;
    update();
  }

  decerementAge() {
    age--;
    update();
  }

  changeGenderColorFemale() {
    if (backgroundCardGenderFemale == const Color.fromARGB(255, 31, 34, 82)) {
      backgroundCardGenderFemale = const Color.fromARGB(255, 30, 32, 63);
      backgroundCardGenderMale = const Color.fromARGB(255, 31, 34, 82);
    } else {
      backgroundCardGenderFemale = const Color.fromARGB(255, 31, 34, 82);
      backgroundCardGenderMale = const Color.fromARGB(255, 30, 32, 63);
    }
    gender = "Male";
    update();
  }

  @override
  changeGenderCardColor() {
    if (backgroundCardGenderMale == const Color.fromARGB(255, 31, 34, 82)) {
      backgroundCardGenderMale = const Color.fromARGB(255, 30, 32, 63);
      backgroundCardGenderFemale = const Color.fromARGB(255, 31, 34, 82);
    } else {
      backgroundCardGenderMale = const Color.fromARGB(255, 31, 34, 82);
      backgroundCardGenderFemale = const Color.fromARGB(255, 30, 32, 63);
    }
    gender = "female";
    update();
  }
}
