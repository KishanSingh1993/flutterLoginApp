import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

import '../model/item.dart';

class DataProvider with ChangeNotifier {
  List<Item> _items = [];

  List<Item> get items => _items;

  Future<void> loadItems() async {
    final String response = await rootBundle.loadString('assets/data/item.json');
    final List<dynamic> data = json.decode(response);
    _items = data.map((json) => Item.fromJson(json)).toList();
    notifyListeners();
  }
}
