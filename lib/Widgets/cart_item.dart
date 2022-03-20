import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: Stack(
            alignment: Alignment.centerLeft,
            overflow: Overflow.visible,
            children: [
              Container(),
              Container(
                width: 331,
                height: 143,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.7),
                      blurRadius: 15,
                      offset: const Offset(0, 0), // changes position of shadow
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 107.0, top: 30, right: 15, bottom: 18),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Margherita pizza",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        "Eyad restaurant",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w300,
                            color: Colors.grey,
                            height: 0.9),
                      ),
                      const Expanded(child: SizedBox()),
                      Row(
                        children: const [
                          Text(
                            "\$",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                height: 0.5),
                          ),
                          Text(
                            "14.99",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Expanded(child: SizedBox()),
                          Text("x",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                          Text("1",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(left: -30, child: Image.asset("assets/mpizza.png")),
            ],
          ),
        ),
      ),
    );
  }
}
