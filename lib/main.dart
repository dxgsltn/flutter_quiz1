import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key); // Added '?' to make the key parameter nullable

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Weather Forecast',
            style: TextStyle(color: Colors.black87),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
          iconTheme: IconThemeData(color: Colors.black54),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SearchPanel(),
            WeatherForecast(),
          ],
        ),
      ),
    );
  }
}

class SearchPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Row(
        children: [
          Icon(Icons.search, color: Colors.grey),
          SizedBox(width: 10),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search...',
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class WeatherForecast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Pushkin 154, Taraz',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Text(
          'Friday, April 19, 2024',
          style: TextStyle(fontSize: 14),
        ),
        SizedBox(height: 8),
        Text(
          '14°F',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Row(
          children: [
            Icon(Icons.ac_unit), // Changed from snowflake to ac_unit
            SizedBox(width: 8),
            Text('Light Snow'),
          ],
        ),
        SizedBox(height: 16),
        Text(
          '7 DAY WEATHER FORECAST',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  'Friday',
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(height: 8),
                Text(
                  '6°F',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            Column(
              children: [
                Text(
                  'Saturday',
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(height: 8),
                Text(
                  '5°F',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}