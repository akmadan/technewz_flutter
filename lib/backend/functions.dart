import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:technewz/components/location.dart';
import 'package:technewz/components/searchbar.dart';
import 'package:technewz/utils/key.dart';

Future<List> fetchnews() async {
  final response = await http.get(
    Uri.parse('https://newsapi.org/v2/top-headlines?country=' +
        Location.location +
        '&category=technology&pageSize=100&apiKey=' +
        Key.key +
        '&q=' +
        SearchBar.searchcontroller.text),
  );
  Map result = jsonDecode(response.body);
  print(result['articles']);

  return (result['articles']);
}
