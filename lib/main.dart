import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './search_field.dart';
import 'main_slider/main_slider.dart';
import 'category/categories_screen.dart';
import './products/category_products_screen.dart';
import './products/single_product.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: AppBar(
            systemOverlayStyle: const SystemUiOverlayStyle(
              // Status bar color
              statusBarColor: Colors.transparent,
              // Status bar brightness (optional)
              statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
              statusBarBrightness: Brightness.light, // For iOS (dark icons)
            ),
            title: Text(
              'Ultimate Organic Life',
              style: TextStyle(
                fontFamily: 'Lato',
              ),
            ),
            elevation: 0,
            backgroundColor: Colors.transparent,
            centerTitle: true,
            titleTextStyle: TextStyle(
              color: Color(0xFF0098B8),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Column(
              children: [
                SearchBar(),
               FullscreenSliderDemo(),
               CategoriesScreen(),
              ],
            ),
      ),
      routes: {
        '/category-product': (item) => CategoryProductsScreen(),
        SingleProduct.routeName: (ctx) => SingleProduct(),
      },
    );
  }
}
