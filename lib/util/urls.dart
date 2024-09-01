class Urls {
  // I HAVE HARD-CODED THE PAGE AND PAGE-SIZE BUT IT CAN ALSO BE A USER INPUT
  static const String feedUrl =
      "https://api.wemotions.app/feed?page=1&page_size=50";
  String videoUrl(String id) {
    return "https://api.wemotions.app/posts/$id/replies";
  }
}
