import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../Widgets/category_widget.dart';
import 'package:awesome_icons/awesome_icons.dart';
import 'package:feather_icons/feather_icons.dart';
import '../Widgets/for_you_item.dart';
import 'package:community_material_icon/community_material_icon.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //part1 App bar
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 21, top: 27),
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.grey),
                    child: Image.asset("assets/profile.png"),
                  ),
                  Expanded(child: Container()),
                  IconButton(
                      padding: const EdgeInsets.only(top: 30, right: 20),
                      onPressed: () {},
                      icon: const Icon(FontAwesomeIcons.listUl,
                          size: 25, color: Colors.grey)),
                ],
              ),
              const SizedBox(height: 51),
              //part2 Food Delivery
              Padding(
                padding: const EdgeInsets.only(left: 21),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Food",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "Delivery",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        height: 0.9,
                      ),
                    ),
                  ],
                ),
              ),
              //part3 Search
              const SizedBox(height: 32),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 35),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Icon(FeatherIcons.search,
                          size: 30, color: Colors.grey),
                    ),
                    const SizedBox(width: 3),
                    Flexible(
                      child: Container(
                        height: 40,
                        decoration: const BoxDecoration(
                          //color: Colors.red,
                          border:
                              Border(bottom: BorderSide(color: Colors.grey)),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(top: 15, left: 3),
                          child: TextField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                label: Text("Search",
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.grey)),
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),

              const Padding(
                padding: EdgeInsets.only(left: 21),
                child: Text(
                  "Categories",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(height: 0),

              SizedBox(
                height: 260,
                child: ListView.builder(
                  shrinkWrap: true,
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
                          const SizedBox(width: 25),
                        ],
                      ),
                    );
                  }),
                  itemCount: 1,
                  scrollDirection: Axis.horizontal,
                ),
              ),
              const SizedBox(height: 7),
              const Padding(
                padding: EdgeInsets.only(left: 21),
                child: Text(
                  'For you',
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(height: 15),
              Column(
                children: const [
                  ForYouItem(),
                  SizedBox(height: 25),
                  ForYouItem(),
                  SizedBox(height: 25),
                  ForYouItem(),
                  SizedBox(height: 15),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
