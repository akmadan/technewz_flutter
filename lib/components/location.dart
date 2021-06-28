import 'package:flutter/material.dart';
import 'package:technewz/backend/functions.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);
  static String location = '';

  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  List<String> locationcodes = ['us', 'in', 'de', 'jp', 'gb', 'kr', 'cn'];
  List<String> countries = [
    'USA',
    'India',
    'Germany',
    'Japan',
    'UK',
    'South Korea',
    'China'
  ];
  String dropdownValue = 'USA';
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DropdownButton<String>(
        value: dropdownValue,
        style: const TextStyle(color: Colors.white),
        isExpanded: false,
        underline: Container(),
        onChanged: (String? newValue) {
          setState(() {
            Location.location = locationcodes[countries.indexOf(newValue!)];
            dropdownValue = newValue;
          });
          // fetchnews();
          print(Location.location);
          fetchnews();
          },
        items: <String>[
          'USA',
          'India',
          'Germany',
          'Japan',
          'UK',
          'South Korea',
          'China'
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
