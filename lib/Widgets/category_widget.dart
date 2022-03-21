import 'package:flutter/material.dart';
import 'package:community_material_icon/community_material_icon.dart';

class CategoryWidget extends StatelessWidget {
  CategoryWidget(
      {Key? key,
      required this.imgurl,
      required this.name,
      this.hight,
      this.hight2})
      : super(key: key);

  String imgurl;
  String name;

  double? hight;
  double? hight2;

  @override
  Widget build(BuildContext context) {
    return (SafeArea(
      child: Center(
          child: Container(
        height: 187,
        width: 130,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 9,
              blurRadius: 20,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(children: [
          SizedBox(
            height: hight,
          ),
          Image.asset(imgurl),
          Text(
            name,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, height: hight2),
          ),
          const SizedBox(height: 21),
          const Icon(
            CommunityMaterialIcons.plus_circle,
            color: Color.fromRGBO(255, 90, 90, 1),
            size: 30,
          ),
        ]),
      )),
    ));
  }
}
