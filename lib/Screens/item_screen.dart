import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ui/Widgets/go_back.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final screeSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Row(
                  children: [
                    const GoBack(),
                    const Expanded(child: SizedBox()),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Container(
                        height: 40,
                        width: 39,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromRGBO(255, 190, 11, 1),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.add),
                          color: Colors.white,
                          iconSize: 20,
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    const Text(
                      "Margherita",
                      style:
                          TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "Pizza",
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          height: 0.9),
                    ),
                    const SizedBox(height: 19),
                    Row(
                      children: const [
                        SizedBox(width: 3),
                        Text(
                          '\$',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              height: 0.4,
                              fontFeatures: [FontFeature.subscripts()],
                              color: Color.fromRGBO(255, 90, 90, 1)),
                        ),
                        Text(
                          "14.99",
                          style: TextStyle(
                              fontSize: 50,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(255, 90, 90, 1)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 23.0),
                child: Stack(
                  children: [
                    Container(
                      //color: Colors.red,
                      height: 276,
                      width: screeSize.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          txtgrey("Crust"),
                          txtblack("Thick crust"),
                          const SizedBox(height: 21),
                          txtgrey("Delivery time"),
                          Row(
                            children: [
                              txtblack("30"),
                              const SizedBox(width: 2),
                              const Text(
                                "min",
                                style: TextStyle(
                                    height: 2, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const SizedBox(height: 21),
                          txtgrey("Size"),
                          const SizedBox(height: 5),
                          Row(
                            children: [
                              sizetype("S"),
                              const SizedBox(width: 10),
                              sizetype("M"),
                              const SizedBox(width: 10),
                              sizetype("L"),
                            ],
                          )
                        ],
                      ),
                    ),
                    Positioned(
                        left: 100, child: Image.asset("assets/pizzal.png")),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  "Ingredients",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 25),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return Container(
                        height: 50,
                        child: Row(
                          children: [
                            // you can remove the SizedBox when you get data from database and replace the path with yours and change item count to your number
                            const SizedBox(width: 30),
                            ingredientBox("assets/tometo.png"),
                            const SizedBox(width: 30),
                            ingredientBox("assets/chees.png"),
                            const SizedBox(width: 30),
                            ingredientBox("assets/green.png"),
                            const SizedBox(width: 30),
                            ingredientBox("assets/salt.png"),
                            const SizedBox(width: 30),
                          ],
                        ));
                  },
                  scrollDirection: Axis.horizontal,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, bottom: 55),
                child: Container(
                  alignment: Alignment.center,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Place an order     > ",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    style: TextButton.styleFrom(
                      primary: Colors.black,
                      backgroundColor: const Color.fromRGBO(255, 190, 11, 1),
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
      )),
    );

    // ignore: dead_code
  }

  Widget ingredientBox(String img) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            // spreadRadius: 5,
            blurRadius: 6,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
        color: Colors.white,
        borderRadius: BorderRadius.circular(19),
      ),
      child: Image.asset(img),
    );
  }

  Widget txtgrey(String theText) {
    return Text(
      theText,
      style: const TextStyle(
          fontSize: 20, fontWeight: FontWeight.w300, color: Colors.grey),
    );
  }

  Widget sizetype(String sizeText) {
    return InkWell(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        width: 35,
        height: 35,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.black)),
        child: Text(
          sizeText,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }

  Widget txtblack(String theTextbclack) {
    return Text(
      theTextbclack,
      style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    );
  }
}
