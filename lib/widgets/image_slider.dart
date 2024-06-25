import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:meetup_app/widgets/h_slider.dart';
import 'package:meetup_app/widgets/search_bar.dart';
import 'package:meetup_app/widgets/trending_people.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../provider/meetup_provider.dart';

class MyImageSlider extends StatefulWidget {
  const MyImageSlider({super.key});

  @override
  State<MyImageSlider> createState() => _MyImageSliderState();
}

class _MyImageSliderState extends State<MyImageSlider> {
  final myitems = [
    Image.asset('assets/images/image01.png'),
    Image.asset('assets/images/image02.png'),
    Image.asset('assets/images/image03.png'),
    Image.asset('assets/images/image04.png'),
    Image.asset('assets/images/image05.png'),
    Image.asset('assets/images/image06.png'),
  ];

  int myCurrentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SearchBarField(),
              const SizedBox(height: 10,),
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: true,
                  height: 200,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayInterval: const Duration(seconds: 2),
                  enlargeCenterPage: true,
                  aspectRatio: 2.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      myCurrentIndex = index;
                    });
                  },
                ),
                items: myitems,
              ),
              AnimatedSmoothIndicator(activeIndex: myCurrentIndex,
                count: myitems.length,
                effect: WormEffect(
                  dotHeight: 8,
                  dotWidth: 8,
                  spacing: 10,
                  dotColor: Colors.grey.shade200,
                  activeDotColor: Colors.grey.shade900,
                  paintStyle: PaintingStyle.fill,
                ),),
              const SizedBox(height: 10,),

              TrendingPeopleWidget(),

              const SizedBox(height: 10,),
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                    child: Text(
                      'Top Trending Meetup',
                      style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 18),
                    ),
                ),
              ),
              HorizontalListView()
            ],
          ),
        ));
  }
}