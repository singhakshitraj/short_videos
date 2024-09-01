import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:scroll_app/util/urls.dart';
import 'package:scroll_app/domain/models/video.dart';

class GetFeed {
  Future<List<Video>> getFeedData() async {
    final List<Video> videoList = [];
    final response = await http.get(Uri.parse(Urls.feedUrl));
    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = jsonDecode(response.body)['posts'];
      for (Map vid in data) {
        videoList.add(Video.fromJson(vid));
      }
    }
    return videoList;
  }
}
