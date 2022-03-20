import 'package:flutter/material.dart';
import 'package:ui/Widgets/category_widget.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Container(
        //height: 170,
        child: ListView.builder(
      itemBuilder: ((context, index) {
        return Container(
          child: Row(
            children: [
              const SizedBox(width: 25),
              CategoryWidget(
                imgurl: "assets/pizza.png",
                name: "Pizza",
                hight: 5,
              ),
              const SizedBox(width: 25),
              CategoryWidget(
                imgurl: "assets/soda.png",
                name: "Soda",
                hight: 16,
                hight2: 1.65,
              ),
              const SizedBox(width: 25),
              CategoryWidget(
                imgurl: "assets/salad.png",
                name: "Salad",
                hight: 5,
              ),
            ],
          ),
        );
      }),
      itemCount: 1,
      scrollDirection: Axis.horizontal,
    )));
  }
}
