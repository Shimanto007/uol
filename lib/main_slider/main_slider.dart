import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final List<String> imgList = [
  'https://shop.shajgoj.com/wp-content/uploads/2022/12/Shajgoj-Banner-DEsign-640-x-420.png',
  'https://shop.shajgoj.com/wp-content/uploads/2018/05/haircare-slider-mobile-180802.jpg',
];
final List<Widget> imageSliders = imgList
    .map(
      (item) => Container(
        child: Container(
          margin: EdgeInsets.all(0.0),
          child: ClipRRect(
            child: Stack(
              children: <Widget>[
                Image.network(
                  item,
                  width: double.infinity,
                ),
              ],
            ),
          ),
        ),
      ),
    )
    .toList();

class FullscreenSliderDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
      child: Builder(
        builder: (context) {
          final double width = MediaQuery.of(context).size.width;
          return CarouselSlider(
            options: CarouselOptions(
              viewportFraction: 1.0,
              aspectRatio: 1.5,
              enlargeCenterPage: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 2),
            ),
            items: imgList
                .map(
                  (item) => Container(
                    child: Center(
                      child: Image.network(
                        item,
                        fit: BoxFit.fitWidth,

                        height: width,
                      ),
                    ),
                  ),
                )
                .toList(),
          );
        },
      ),
    );
  }
}
