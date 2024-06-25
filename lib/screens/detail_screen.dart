import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../model/item.dart';

class DetailScreen extends StatelessWidget {

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
      appBar: AppBar(
        title: const Text('Description'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  autoPlay: false,
                  height: 200,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayInterval: const Duration(seconds: 2),
                  enlargeCenterPage: true,
                  aspectRatio: 2.0,
                  // onPageChanged: (index, reason) {
                  //   setState(() {
                  //     myCurrentIndex = index;
                  //   });
                  // },
                ),
                items: myitems,
              ),
              Align(
                alignment: Alignment.center,
                child: AnimatedSmoothIndicator(
                  activeIndex: myCurrentIndex,
                  count: myitems.length,
                  effect: WormEffect(
                    dotHeight: 8,
                    dotWidth: 8,
                    spacing: 10,
                    dotColor: Colors.grey.shade200,
                    activeDotColor: Colors.grey.shade900,
                    paintStyle: PaintingStyle.fill,
                  ),),
              ),
              const SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Icon(Icons.thumb_up, color: Colors.grey),
                      SizedBox(width: 4),
                      Text('1034'),
                      SizedBox(width: 16),
                      Icon(Icons.thumb_down, color: Colors.grey),
                      SizedBox(width: 4),
                      Text('1034'),
                      SizedBox(width: 16),
                      Icon(Icons.star, color: Colors.grey),
                      SizedBox(width: 4),
                      Text('3.2'),
                    ],
                  ),
                  IconButton(
                    icon: const Icon(Icons.share, color: Colors.grey),
                    onPressed: () {},
                  ),
                ],
              ),
              const Divider(),
              const Text(
                'Actor Name',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Indian Actress',
                style: TextStyle(color: Colors.grey),
              ),
              const SizedBox(height: 8),
              const Row(
                children: [
                  Icon(Icons.access_time, color: Colors.grey),
                  SizedBox(width: 4),
                  Text('Duration 20 Mins'),
                ],
              ),
              const SizedBox(height: 8),
              const Row(
                children: [
                  Icon(Icons.attach_money, color: Colors.grey),
                  SizedBox(width: 4),
                  Text('Total Average Fees ₹9,999'),
                ],
              ),
              const SizedBox(height: 16),
              const Text(
                'About',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'From cardiovascular health to fitness, flexibility, balance, stress relief, better sleep, increased cognitive performance, and more, you can reap all of these benefits in just one session out on the waves. So, you may find yourself wondering what are the benefits of going on a surf camp.',
              ),
              const SizedBox(height: 16),
              TextButton(
                onPressed: () {},
                child: const Text('See More', style: TextStyle(color: Colors.blue)),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
              backgroundColor: Colors.blue
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Prolet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: 'Meetup',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}

// class DetailScreen extends StatelessWidget {
//   final Item item;
//
//   DetailScreen({required this.item});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(item.title),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.share),
//             onPressed: () {
//               Share.share('${item.title}: ${item.description}');
//             },
//           )
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Image.asset(item.image),
//             SizedBox(height: 20),
//             Text(item.title, style: TextStyle(fontSize: 24)),
//             SizedBox(height: 20),
//             Text(item.description),
//           ],
//         ),
//       ),
//     );
//   }
// }
