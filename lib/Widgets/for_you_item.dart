import 'package:flutter/material.dart';

class ForYouItem extends StatelessWidget {
  const ForYouItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Container(
            width: 331,
            height: 143,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  // spreadRadius: 5,
                  blurRadius: 6,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 17, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Icon(
                        Icons.arrow_upward_outlined,
                        color: Color.fromRGBO(255, 190, 11, 1),
                      ),
                      SizedBox(width: 1),
                      Text(
                        "Top of the week",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Margherita pizza",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 4),
                    child: Text(
                      "Eyad restaurant",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey,
                          height: 1.1),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Container(
                        height: 33,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromRGBO(255, 190, 11, 1),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              //spreadRadius: 5,
                              blurRadius: 10,
                              offset: const Offset(
                                  -2, 2), // changes position of shadow
                            ),
                          ],
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.add),
                          color: Colors.white,
                          iconSize: 20,
                          alignment: Alignment.center,
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Icon(
                        Icons.star,
                        color: Color.fromRGBO(255, 190, 11, 1),
                        size: 20,
                      ),
                      const Text("5.0",
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(255, 190, 11, 1),
                              height: 1.5)),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(left: 230, child: Image.asset("assets/mpizza.png")),
        ],
      ),
    );
  }
}
