import 'package:flutter/material.dart';

class GoBack extends StatelessWidget {
  const GoBack({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 39,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(9),
      ),
      child: Padding(
          padding: const EdgeInsets.only(left: 2, bottom: 1),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.grey,
            ),
            iconSize: 25,
          )),
    );
  }
}
