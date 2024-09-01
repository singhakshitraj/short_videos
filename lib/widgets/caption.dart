import 'package:flutter/material.dart';
import 'package:scroll_app/domain/models/video.dart';

Widget videoCaption(Video? video) {
  return Align(
    alignment: Alignment.bottomLeft,
    child: Padding(
      padding: const EdgeInsets.only(right: 50, bottom: 20, left: 20),
      child: Text(video!.title.toString(),
          style: const TextStyle(fontSize: 18, color: Colors.white)),
    ),
  );
}
