import 'package:climate_app/main_screen.dart';
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
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/bgd2.jpg'),
          fit: BoxFit.fill,
          colorFilter: ColorFilter.mode(Colors.black.withOpacity(.2),BlendMode.darken),
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(top:40.0),
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>MainScreen()));
                  },
                  child: Text(
                    'Get Weather',
                    style: TextStyle(fontFamily: 'SpartanMB', fontSize: 25),
                  ),
                ),
              ),
            ),
            Expanded(child: SizedBox())
          ],
        ),
      ),
    );
  }
}
