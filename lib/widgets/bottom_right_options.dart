import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget bottomOptions(double height, double iconSize) {
  return Align(
    alignment: Alignment.bottomRight,
    child: Padding(
      padding: EdgeInsets.only(bottom: 0.1 * height),
      child: SizedBox(
        height: 0.4 * height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(CupertinoIcons.heart_fill,
                size: iconSize, color: Colors.white),
            const Text(
              'LIKE',
              style: TextStyle(color: Colors.white),
            ),
            Icon(CupertinoIcons.bookmark_fill,
                size: iconSize, color: Colors.white),
            const Text(
              'BOOKMARK',
              style: TextStyle(color: Colors.white),
            ),
            Icon(CupertinoIcons.share, size: iconSize, color: Colors.white),
            const Text(
              'SHARE',
              style: TextStyle(color: Colors.white),
            ),
            Icon(CupertinoIcons.moon, size: iconSize, color: Colors.white),
            const Text(
              'NIGHT',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    ),
  );
}
