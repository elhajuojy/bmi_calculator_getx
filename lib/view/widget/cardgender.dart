import 'dart:developer';

import 'package:bmi_calculator/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class cardGender extends StatelessWidget {
  final IconData iconData;
  final Color iconColor;
  final String text;
  final void Function()? ontap;
  const cardGender(
      {Key? key,
      required this.iconData,
      required this.text,
      required this.iconColor,
      this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: InkWell(
      onTap: ontap,
      child: Container(
        decoration: BoxDecoration(
            color: AppColor.cardHeightColor,
            borderRadius: BorderRadius.circular(10)),
        alignment: Alignment.center,
        height: Get.height * 0.3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              iconData,
              color: iconColor,
              size: 100,
            ),
            Text(
              text,
              style: const TextStyle(
                  color: Color.fromARGB(255, 181, 177, 177),
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    ));
  }
}
