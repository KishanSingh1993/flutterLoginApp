import 'dart:convert';
import 'package:flutter/material.dart';


import '../model/meetup.dart';


class MeetupProvider with ChangeNotifier {
  final List<Meetup> _popularMeetups = [
    Meetup(imageUrl: 'https://via.placeholder.com/150', title: 'Popular Meetups in India', meetups: 1028),
    // Add more meetups as needed
  ];

  List<Meetup> get popularMeetups => _popularMeetups;

  final List<Meetup> _trendingPeople = [
    Meetup(imageUrl: 'https://via.placeholder.com/150', title: 'Author', meetups: 1028),
    // Add more people as needed
  ];

  List<Meetup> get trendingPeople => _trendingPeople;

  final List<Meetup> _topTrendingMeetups = [
    Meetup(imageUrl: 'https://via.placeholder.com/150', title: 'Top Trending Meetup 1', meetups: 728),
    // Add more meetups as needed
  ];

  List<Meetup> get topTrendingMeetups => _topTrendingMeetups;
}


// class MeetupProvider with ChangeNotifier {
//   List<Meetup> _popularMeetups = [];
//   List<Person> _trendingPeople = [];
//   List<TopMeetup> _topMeetups = [];
//
//   List<Meetup> get popularMeetups => _popularMeetups;
//   List<Person> get trendingPeople => _trendingPeople;
//   List<TopMeetup> get topMeetups => _topMeetups;
//
//   MeetupProvider() {
//     loadMeetupData();
//   }
//
//   Future<void> loadMeetupData() async {
//     final String response = await rootBundle.loadString('assets/data.json');
//     final data = await json.decode(response);
//
//     _popularMeetups = (data['popularMeetups'] as List)
//         .map((i) => Meetup.fromJson(i))
//         .toList();
//     _trendingPeople = (data['trendingPeople'] as List)
//         .map((i) => Person.fromJson(i))
//         .toList();
//     _topMeetups = (data['topMeetups'] as List)
//         .map((i) => TopMeetup.fromJson(i))
//         .toList();
//
//     notifyListeners();
//   }
// }
