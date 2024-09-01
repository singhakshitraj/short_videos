class Video {
  int? id;
  List<dynamic>? category;
  String? slug;
  num? parentVideoId;
  int? childVideoCount;
  String? title;
  String? identifier;
  int? commentCount;
  int? upvoteCount;
  int? viewCount;
  int? exitCount;
  int? ratingCount;
  int? averageRating;
  int? shareCount;
  String? videoLink;
  String? contractAddress;
  String? chainId;
  String? chartUrl;
  BaseToken? baseToken;
  bool? isLocked;
  int? createdAt;
  String? firstName;
  String? lastName;
  String? username;
  bool? upvoted;
  bool? bookmarked;
  String? thumbnailUrl;
  bool? following;
  String? pictureUrl;

  Video(
      {this.id,
      this.category,
      this.slug,
      this.parentVideoId,
      this.childVideoCount,
      this.title,
      this.identifier,
      this.commentCount,
      this.upvoteCount,
      this.viewCount,
      this.exitCount,
      this.ratingCount,
      this.averageRating,
      this.shareCount,
      this.videoLink,
      this.contractAddress,
      this.chainId,
      this.chartUrl,
      this.baseToken,
      this.isLocked,
      this.createdAt,
      this.firstName,
      this.lastName,
      this.username,
      this.upvoted,
      this.bookmarked,
      this.thumbnailUrl,
      this.following,
      this.pictureUrl});

  Video.fromJson(Map<dynamic, dynamic> json) {
    id = json['id'];
    category = <dynamic>[];
    slug = json['slug'];
    parentVideoId = json['parent_video_id'];
    childVideoCount = json['child_video_count'];
    title = json['title'];
    identifier = json['identifier'];
    commentCount = json['comment_count'];
    upvoteCount = json['upvote_count'];
    viewCount = json['view_count'];
    exitCount = json['exit_count'];
    ratingCount = json['rating_count'];
    averageRating = json['average_rating'];
    shareCount = json['share_count'];
    videoLink = json['video_link'];
    contractAddress = json['contract_address'];
    chainId = json['chain_id'];
    chartUrl = json['chart_url'];
    baseToken = json['baseToken'] != null
        ? BaseToken.fromJson(json['baseToken'])
        : null;
    isLocked = json['is_locked'];
    createdAt = json['created_at'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    username = json['username'];
    upvoted = json['upvoted'];
    bookmarked = json['bookmarked'];
    thumbnailUrl = json['thumbnail_url'];
    following = json['following'];
    pictureUrl = json['picture_url'];
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = <dynamic, dynamic>{};
    data['id'] = id;
    if (category != null) {
      data['category'] = category!.map((v) => v.toJson()).toList();
    }
    data['slug'] = slug;
    data['parent_video_id'] = parentVideoId;
    data['child_video_count'] = childVideoCount;
    data['title'] = title;
    data['identifier'] = identifier;
    data['comment_count'] = commentCount;
    data['upvote_count'] = upvoteCount;
    data['view_count'] = viewCount;
    data['exit_count'] = exitCount;
    data['rating_count'] = ratingCount;
    data['average_rating'] = averageRating;
    data['share_count'] = shareCount;
    data['video_link'] = videoLink;
    data['contract_address'] = contractAddress;
    data['chain_id'] = chainId;
    data['chart_url'] = chartUrl;
    if (baseToken != null) {
      data['baseToken'] = baseToken!.toJson();
    }
    data['is_locked'] = isLocked;
    data['created_at'] = createdAt;
    data['first_name'] = firstName;
    data['last_name'] = lastName;
    data['username'] = username;
    data['upvoted'] = upvoted;
    data['bookmarked'] = bookmarked;
    data['thumbnail_url'] = thumbnailUrl;
    data['following'] = following;
    data['picture_url'] = pictureUrl;
    return data;
  }
}

class BaseToken {
  String? address;
  String? name;
  String? symbol;
  String? imageUrl;

  BaseToken({this.address, this.name, this.symbol, this.imageUrl});

  BaseToken.fromJson(Map<dynamic, dynamic> json) {
    address = json['address'];
    name = json['name'];
    symbol = json['symbol'];
    imageUrl = json['image_url'];
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = <dynamic, dynamic>{};
    data['address'] = address;
    data['name'] = name;
    data['symbol'] = symbol;
    data['image_url'] = imageUrl;
    return data;
  }
}
