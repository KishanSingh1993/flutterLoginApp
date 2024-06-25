import 'package:flutter/material.dart';

import '../model/trending_people.dart';


class TrendingPeopleWidget extends StatelessWidget {

  final List<TrendingPeople> trendingPeople = [
    TrendingPeople(
      type: 'Author',
      meetups: 1028,
      images: [
        'https://example.com/image1.jpg',
        'https://example.com/image2.jpg',
        'https://example.com/image3.jpg',
        'https://example.com/image4.jpg',
      ],
    ),
    TrendingPeople(
      type: 'Musician',
      meetups: 720,
      images: [
        'https://example.com/image5.jpg',
        'https://example.com/image6.jpg',
        'https://example.com/image7.jpg',
        'https://example.com/image8.jpg',
      ],
    ),
    TrendingPeople(
      type: 'Musician',
      meetups: 550,
      images: [
        'https://example.com/image5.jpg',
        'https://example.com/image6.jpg',
        'https://example.com/image7.jpg',
        'https://example.com/image8.jpg',
      ],
    ),
    // Add more items here
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Trending Popular People',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Container(
            height: 200, // Adjust height as needed
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: trendingPeople.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 16.0),
                  child: TrendingPersonCard(person: trendingPeople[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class TrendingPersonCard extends StatelessWidget {
  final TrendingPeople person;

  TrendingPersonCard({required this.person});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300, // Adjust width as needed
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.person, size: 24),
              const SizedBox(width: 8),
              Text(person.type, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ],
          ),
          const SizedBox(height: 8),
          Text('${person.meetups} Meetups', style: const TextStyle(fontSize: 14, color: Colors.grey)),
          const SizedBox(height: 8),
          Row(
            children: person.images.map((url) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                child: CircleAvatar(
                  radius: 16,
                  backgroundImage: NetworkImage(url),
                ),
              );
            }).toList(),
          ),
          const SizedBox(height: 8),
          Align(
            alignment: Alignment.bottomRight,
            child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),),
                child: const Text('See more',
                  style: TextStyle(
                  color: Colors.white,
                  fontSize: 18
                ),),

            ),
          ),
        ],
      ),
    );
  }
}

// class TrendingPeople extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final trendingPeople = Provider.of<MeetupProvider>(context).trendingPeople;
//
//     return Container(
//       height: 120,
//       child: ListView.builder(
//         scrollDirection: Axis.horizontal,
//         itemCount: trendingPeople.length,
//         itemBuilder: (context, index) {
//           return Card(
//             child: Column(
//               children: [
//                 Image.network(trendingPeople[index].imageUrl, width: 100, height: 100),
//                 Text(trendingPeople[index].title),
//                 Text('${trendingPeople[index].meetups} Meetups'),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
