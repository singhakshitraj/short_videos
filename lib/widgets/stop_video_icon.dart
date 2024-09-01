import 'package:flutter/material.dart';

Widget stoppedVideoIcon() {
  return const Align(
    alignment: Alignment.center,
    child: Padding(
      padding: EdgeInsets.all(8.0),
      child: Icon(Icons.play_arrow, size: 60, color: Colors.white),
    ),
  );
}
