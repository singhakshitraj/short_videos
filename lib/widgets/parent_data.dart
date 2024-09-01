import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:scroll_app/domain/models/video.dart';

Widget parentData(BuildContext context, Video parentVideo) {
  return Align(
    alignment: Alignment.topLeft,
    child: Padding(
      padding: const EdgeInsets.only(top: 80),
      child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.15,
          width: MediaQuery.of(context).size.width,
          child: Card(
            color: Colors.white.withOpacity(0.5),
            elevation: 10,
            borderOnForeground: true,
            clipBehavior: Clip.hardEdge,
            child: Row(
              children: [
                const SizedBox(width: 10),
                CachedNetworkImage(
                  imageUrl: parentVideo.thumbnailUrl.toString(),
                ),
                const SizedBox(width: 10),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 10,
                        ),
                        const Text('Response To : '),
                        CircleAvatar(
                          radius: 10,
                          child: CachedNetworkImage(
                              imageUrl: parentVideo.pictureUrl.toString()),
                        ),
                        const SizedBox(width: 4),
                        Text(parentVideo.username.toString()),
                      ],
                    ),
                    Text(parentVideo.title.toString()),
                  ],
                )),
                const SizedBox(width: 10),
              ],
            ),
          )),
    ),
  );
}
