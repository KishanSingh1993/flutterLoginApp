import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/meetup_provider.dart';

class TrendingMeetups extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final topTrendingMeetups = Provider.of<MeetupProvider>(context).topTrendingMeetups;

    return Container(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: topTrendingMeetups.length,
        itemBuilder: (context, index) {
          return Card(
            child: Column(
              children: [
                Image.network(topTrendingMeetups[index].imageUrl, width: 100, height: 100),
                Text(topTrendingMeetups[index].title),
                Text('${topTrendingMeetups[index].meetups} Meetups'),
              ],
            ),
          );
        },
      ),
    );
  }
}
