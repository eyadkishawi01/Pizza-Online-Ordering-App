import 'package:flutter/material.dart';
import 'package:ui/Screens/cart.dart';
import 'package:ui/Screens/home_page.dart';
import 'Screens/item_screen.dart';
import 'Widgets/cart_item.dart';
import 'Widgets/category_list.dart';
import 'Widgets/category_widget.dart';
import 'Widgets/for_you_item.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Welcome to Flutter',
      home: CartItem(),
    );
  }
}
