import 'package:bmi_calculator/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class CardWithButton extends StatelessWidget {
  final String text;
  final String textType;
  final String type;
  final void Function() onPressed1;
  final void Function() onPressed2;

  const CardWithButton(
      {Key? key,
      required this.text,
      required this.textType,
      required this.type,
      required this.onPressed1,
      required this.onPressed2})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      decoration: BoxDecoration(
          color: AppColor.cardHeightColor,
          borderRadius: BorderRadius.circular(10)),
      alignment: Alignment.center,
      height: Get.height * 0.2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                textType,
                style: const TextStyle(
                    color: AppColor.primaryColor,
                    fontSize: 40,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                type,
                textAlign: TextAlign.justify,
                style: const TextStyle(color: AppColor.primaryColor),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: onPressed1,
                child: const Icon(
                  Icons.remove,
                  color: AppColor.primaryColor,
                ),
                style: ElevatedButton.styleFrom(
                  primary: AppColor.backgroundColor,
                  shape: CircleBorder(),
                  // padding: EdgeInsets.all(10),
                ),
              ),
              ElevatedButton(
                onPressed: onPressed2,
                child: const Icon(
                  Icons.add_rounded,
                  color: AppColor.primaryColor,
                ),
                style: ElevatedButton.styleFrom(
                  primary: AppColor.backgroundColor,
                  shape: CircleBorder(),
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
