import 'package:flutter/material.dart';

class SingleProduct extends StatelessWidget {

  // final String title;
  //
  // SingleProduct(this.title);
  static const routeName = '/single-product';

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)?.settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'title',
        ),
      ),
    );
  }
}
