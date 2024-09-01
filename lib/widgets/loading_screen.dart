import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

Widget loadingVideoData(double height, String imageUrl) {
  return Stack(
    children: [
      CachedNetworkImage(
        height: height,
        imageUrl: imageUrl,
        placeholder: (context, img) => Container(color: Colors.black),
        fit: BoxFit.fill,
      ),
      const Align(
        alignment: Alignment.bottomLeft,
        child: LinearProgressIndicator(
          color: Colors.yellow,
        ),
      ),
    ],
  );
}
