import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:meetup_app/provider/auth_provider.dart';
import 'package:meetup_app/provider/data_provider.dart';
import 'package:meetup_app/provider/meetup_provider.dart';
import 'package:meetup_app/screens/home_screen.dart';
import 'package:meetup_app/screens/login_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MeetupProvider()),
      ],
      child: MaterialApp(
        title: 'Meetup App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen(),
      ),
    );
  }
}

// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (_) => AuthProvider()),
//         ChangeNotifierProvider(create: (_) => DataProvider()),
//       ],
//       child: MaterialApp(
//         title: 'Flutter App',
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//         ),
//         home: LoginScreen(),
//       ),
//     );
//   }
// }