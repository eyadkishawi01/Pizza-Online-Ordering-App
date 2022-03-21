import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GoBack extends StatelessWidget {
  const GoBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 37,
      width: 35,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(9),
      ),
      child: Padding(
          padding: const EdgeInsets.only(left: 2, bottom: 1),
          child: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.grey,
            ),
            iconSize: 20,
          )),
    );
  }
}
