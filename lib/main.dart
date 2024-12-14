// fn f5 to run it, ctrl s to hot reload

import 'package:flutter/material.dart';
import 'match.dart';
import 'dart:io';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}


class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int gameweek = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        title: Text(
          'Premier League Match Predictor',
          style: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontFamily: 'Calib',
            letterSpacing: 2.0,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple.shade400,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_left),
                  color: Colors.purple.shade400,
                  iconSize: 60.0,
                  onPressed: () {
                    setState(() {
                      if (gameweek > 1) {
                        gameweek--;
                      }
                    });
                  },
                ),
                Text(
                  'Gameweek $gameweek',
                textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Calib',
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.arrow_right),
                  color: Colors.purple.shade400,
                  iconSize: 60.0,
                  onPressed: () {
                    setState(() {
                      if (gameweek < 38) {
                        gameweek++;
                      }
                    });
                  },
                ),
              ]
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Match(team1: "Liverpool", team2: "Arsenal", gw: 2).getMatchWidget(), 
                Match(team1: "Arsenal", team2: "Manchester City", gw: 2).getMatchWidget(),
              ]
            ),
          ]
        ),
      ),
    );
  }
}

