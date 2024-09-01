import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:scroll_app/domain/models/video.dart';
import 'package:scroll_app/util/urls.dart';

class GetReply {
  Future<List<Video>> getReplies(String id) async {
    final List<Video> videoList = [];
    final response = await http.get(Uri.parse(Urls().videoUrl(id)));
    if (response.statusCode == 200 || response.statusCode == 201) {
      final data = jsonDecode(response.body)['post'];
      for (Map vid in data) {
        videoList.add(Video.fromJson(vid));
      }
    }
    return videoList;
  }
}
