import 'package:bmi_calculator/controller/homepage_controller.dart';
import 'package:bmi_calculator/core/constant/color.dart';
import 'package:bmi_calculator/view/widget/cardWithButton.dart';
import 'package:bmi_calculator/view/widget/cardgender.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomePageControllerImp controller = Get.put(HomePageControllerImp());
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI CALCULATOR"),
        centerTitle: true,
        backgroundColor: AppColor.backgroundColor,
      ),
      body: SafeArea(
        child: Container(
            padding: const EdgeInsets.all(10),
            color: AppColor.backgroundColor,
            child: Column(
              children: [
                GetBuilder<HomePageControllerImp>(builder: (_) {
                  return Row(
                    children: [
                      cardGender(
                        text: "MALE",
                        iconData: Icons.male_rounded,
                        iconColor: AppColor.iconMaleColor,
                        color: controller.backgroundCardGenderMale,
                        ontap: () {
                          controller.changeGenderCardColor();
                        },
                      ),
                      const SizedBox(width: 10),
                      cardGender(
                        text: "FEMALE",
                        iconData: Icons.female_rounded,
                        iconColor: AppColor.iconFemaleColor,
                        color: controller.backgroundCardGenderFemale,
                        ontap: () {
                          controller.changeGenderColorFemale();
                        },
                      ),
                    ],
                  );
                }),
                const SizedBox(height: 10),
                Container(
                  decoration: BoxDecoration(
                      color: AppColor.cardHeightColor,
                      borderRadius: BorderRadius.circular(10)),
                  alignment: Alignment.center,
                  height: Get.height * 0.24,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "HEIGHT",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GetBuilder<HomePageControllerImp>(
                              builder: ((controller) {
                            return Text(
                              controller.changeHeight.toStringAsFixed(0),
                              style: const TextStyle(
                                  color: AppColor.primaryColor,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            );
                          })),
                          const Text(
                            " cm",
                            textAlign: TextAlign.justify,
                            style: TextStyle(color: AppColor.primaryColor),
                          ),
                        ],
                      ),
                      GetBuilder<HomePageControllerImp>(builder: (_) {
                        return Slider(
                          value: controller.changeProg,
                          onChanged: (val) {
                            controller.changeProgr(val);
                          },
                          activeColor: AppColor.primaryColor,
                          thumbColor: AppColor.primaryColor,
                          inactiveColor:
                              const Color.fromARGB(255, 220, 176, 53),
                        );
                      }),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                GetBuilder<HomePageControllerImp>(builder: (_) {
                  return Row(
                    children: [
                      CardWithButton(
                        text: "WEIGHT",
                        type: " kg",
                        textType: controller.weight.toString(),
                        onPressed1: () {
                          controller.decerementWeight();
                        },
                        onPressed2: () {
                          controller.incremntWeight();
                        },
                      ),
                      const SizedBox(width: 10),
                      CardWithButton(
                        text: "AGE",
                        type: "",
                        textType: controller.age.toString(),
                        onPressed1: () {
                          controller.decerementAge();
                        },
                        onPressed2: () {
                          controller.incremntAge();
                        },
                      ),
                    ],
                  );
                }),
                const SizedBox(height: 10),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: AppColor.primaryColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: TextButton(
                      onPressed: () {
                        controller.calculate();
                      },
                      child: const Text(
                        "CALCULATE",
                        style: TextStyle(
                            color: AppColor.backgroundColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
