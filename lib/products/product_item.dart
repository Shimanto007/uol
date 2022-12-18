import 'package:flutter/material.dart';
import '../products/single_product.dart';

class ProductItem extends StatelessWidget {
  final dynamic id;
  final dynamic product_name;
  final dynamic product_image;
  final int product_price;

  ProductItem(
      this.id, this.product_name, this.product_image, this.product_price);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              SingleProduct.routeName,
              arguments: id,
            );
          },
          child: Image(
            image: NetworkImage(
                'https://ultimateapi.hostprohub.com/frontend/images/product_images/large/$product_image'),
            fit: BoxFit.cover,
          ),
        ),
        footer: GridTileBar(
          backgroundColor: Color(0xFF0098B8),
          leading: IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {},
          ),
          title: Text(
            product_name,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.bold,
              fontFamily: "lato",
            ),
          ),
          subtitle: Text("BDT $product_price"),
          trailing: IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
