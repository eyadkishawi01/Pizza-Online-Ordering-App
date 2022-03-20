import 'package:flutter/material.dart';
import 'package:ui/Widgets/go_back.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Padding(
            padding:
                const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 50),
            child: Row(
              children: [
                const GoBack(),
                const Expanded(child: SizedBox()),
                Container(
                  //  margin: const EdgeInsets.only(left: 21, top: 27),
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.grey),
                  child: null,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
