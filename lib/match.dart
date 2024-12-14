import 'package:flutter/material.dart';

class Match {
  final String team1;
  final String team2;
  final int gw;

  const Match({required this.team1, required this.team2, required this.gw});

  String getMatch() {
    // Function body to return the formatted match information
    return '$team1 vs $team2 in gameweek $gw';
  }

  Widget getMatchWidget() {
    return Container(
      padding: EdgeInsets.all(20),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: SizedBox(width: 60),
            ),
            Expanded(
              flex: 1,
              child: Image.asset(
                'assets/$team1.png',
                height: 60,
                width: 60,
              ),
              ),
            Expanded(
              flex: 2,
              child: Text(
                team1,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Calib',
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Text(
                'versus',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontFamily: 'Calib',
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Text(
                team2,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Calib',
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Image.asset(
                'assets/$team2.png',
                height: 60,
                width: 60,
                ),
              ),
            Expanded(
              child: SizedBox(width: 60),
            ),
          ],
        ),
      ),
    );
  }
}