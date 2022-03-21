import 'package:flutter/material.dart';
import 'package:ui/Widgets/go_back.dart';

import '../Widgets/cart_item.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 20, left: 20, right: 20, bottom: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
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
                        child: Image.asset("assets/profile.png"),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 50.0, bottom: 20),
                    child: Text(
                      "Cart",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
                    ),
                  ),
                  //you can use a loop here and display th containers.
                  CartItem(),
                  SizedBox(height: 35),
                  CartItem(),
                  SizedBox(height: 35),
                  CartItem(),
                  SizedBox(height: 90),

                  Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Total",
                          style: TextStyle(
                              fontFamily: 'Sarabun',
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 50),
                        Text(
                          "\$",
                          style: TextStyle(
                              fontSize: 20,
                              height: 0.5,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "100,00",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 30),
                    child: Container(
                      alignment: Alignment.center,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Checkout",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        style: TextButton.styleFrom(
                          primary: Colors.black,
                          backgroundColor:
                              const Color.fromRGBO(255, 190, 11, 1),
                          minimumSize: Size(268, 56),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(18)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
