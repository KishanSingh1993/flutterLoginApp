import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:meetup_app/screens/detail_screen.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../model/card_item.dart';

class HorizontalListView extends StatelessWidget {
  final List<CardItem> items = [
    CardItem(imageUrl: 'assets/images/image01.png', title: '1'),
    CardItem(imageUrl: 'assets/images/image02.png', title: '2'),
    CardItem(imageUrl: 'assets/images/image03.png', title: '3'),
    CardItem(imageUrl: 'assets/images/image04.png', title: '4'),
    CardItem(imageUrl: 'assets/images/image05.png', title: '5'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220, // Height of the horizontal list view
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // ScaffoldMessenger.of(context).showSnackBar(
              //     const SnackBar(content: Text('Gesture Detected!')));

              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (context) => DetailScreen()),
              );
            },
            child: Card(
              margin: const EdgeInsets.all(10.0),
              child: Container(
                width: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      items[index].imageUrl,
                      fit: BoxFit.cover,
                      width: double.infinity,
                      height: 150,
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          items[index].title,
                          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}