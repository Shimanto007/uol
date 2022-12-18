import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../products/product_item.dart';
import '../models/category_product.dart';

class CategoryProductsScreen extends StatefulWidget {
  @override
  State<CategoryProductsScreen> createState() => _CategoryProductsScreenState();
}

class _CategoryProductsScreenState extends State<CategoryProductsScreen> {
  Future<CategoryProduct> getCategoryApi() async {
    final response = await http.get(
      Uri.parse('https://ultimateapi.hostprohub.com/api/get-products'),
    );
    var data = jsonDecode(response.body);
    if (response.statusCode == 200) {
      return CategoryProduct.fromJson(data);
    } else {
      return CategoryProduct.fromJson(data);
    }
  }

  @override
  void initState() {
    super.initState();
    this.getCategoryApi();
  }

  // final String item;
  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final categoriesTitle = routeArgs['title'];
    final categoriesId = routeArgs['id'];
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          // Status bar color
          statusBarColor: Colors.transparent,
          // Status bar brightness (optional)
          statusBarIconBrightness: Brightness.dark,
          // For Android (dark icons)
          statusBarBrightness: Brightness.light, // For iOS (dark icons)
        ),
        leading: const BackButton(
          color: Color(0xFF0098B8),
        ),
        title: Text(
          categoriesTitle,
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
      body: Container(
          padding: EdgeInsets.all(10),
          height: height,
          child: FutureBuilder<CategoryProduct>(
            future: getCategoryApi(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final categoriesProduct =
                    snapshot.data!.products.where((Product) {
                  return Product.categoryId
                      .toString()
                      .contains(categoriesId.toString());
                }).toList();
                return Center(
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 20,
                      childAspectRatio: 0.8,
                    ),
                    itemCount: categoriesProduct.length,
                    itemBuilder: (context, i) => ProductItem(
                      categoriesProduct[i]!.id,
                      categoriesProduct[i].productName,
                      categoriesProduct[i].productImage,
                      categoriesProduct[i].productPrice,
                    ),
                  ),
                );
              } else {
                return Text("loading");
              }
            },
          ),
        ),
    );
  }
}
