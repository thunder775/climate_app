import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/bgd1.jpg'),
          fit: BoxFit.fill,
          colorFilter:
              ColorFilter.mode(Colors.black.withOpacity(.2), BlendMode.darken),
        )),
        child: SafeArea(
          child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RotationTransition(
                      child: Icon(
                        Icons.navigation,
                        size: 60,
                      ),
                      turns: AlwaysStoppedAnimation(35 / 360),
                    ),
                    Icon(
                      Icons.location_city,
                      size: 60,
                    )
                  ],
                ),
              )
              ,Padding(
                padding: const EdgeInsets.all(24.0),
                child: Row(
                  children: <Widget>[
                    Text('32° ☀',style: TextStyle(fontSize: 65,fontFamily: 'SpartanMB'),),Expanded(child: SizedBox())
                  ],
                ),
              ),Padding(
                padding: const EdgeInsets.all(24.0),
                child: Text('Its ☕ time in Bombay!',textAlign: TextAlign.center,style: TextStyle(fontSize: 65,fontFamily: 'SpartanMB',),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
