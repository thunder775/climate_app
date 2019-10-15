import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: LocationPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
    ),
  );
}

// Create WeatherPage in a separate file
class LocationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {},
        child: Text('Get Weather'),
      color: Colors.blue,),
    );
  }
}
