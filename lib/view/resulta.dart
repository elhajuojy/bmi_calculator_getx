import 'package:bmi_calculator/controller/homepage_controller.dart';
import 'package:bmi_calculator/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Resulta extends StatelessWidget {
  const Resulta({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomePageControllerImp controller = Get.put(HomePageControllerImp());
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(20),
        child: Container(
          child: Card(
            margin: EdgeInsets.all(30),
            elevation: 2,
            color: AppColor.primaryColor,
            child: Container(
              padding: const EdgeInsets.only(
                  top: 30, bottom: 30, right: 50, left: 50),
              child: FittedBox(
                child: Column(
                  children: [
                    Text(
                      controller.model.age.toString(),
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      controller.model.geneder == "male" ? "Male" : "female",
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      controller.model.weghit.toString(),
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      controller.model.height.toStringAsFixed(0),
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
