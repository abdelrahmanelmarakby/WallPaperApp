class ImagesModel {
  int total;
  int totalHits;
  List<Hits> hits;
  ImagesModel({this.total, this.totalHits, this.hits});

  ImagesModel.fromJson(Map<String, dynamic> json) {
    total = json['total'];
    totalHits = json['totalHits'];
    if (json['hits'] != null) {
      hits = new List<Hits>();
      json['hits'].forEach((v) {
        hits.add(new Hits.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total'] = this.total;
    data['totalHits'] = this.totalHits;
    if (this.hits != null) {
      data['hits'] = this.hits.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Hits {
  int id;
  String pageURL;
  String type;
  String tags;
  String previewURL;
  int previewWidth;
  int previewHeight;
  String webformatURL;
  int webformatWidth;
  int webformatHeight;
  String largeImageURL;
  int imageWidth;
  int imageHeight;
  int imageSize;
  int views;
  int downloads;
  int favorites;
  int likes;
  int comments;
  int userId;
  String user;
  String userImageURL;

  Hits(
      {this.id,
      this.pageURL,
      this.type,
      this.tags,
      this.previewURL,
      this.previewWidth,
      this.previewHeight,
      this.webformatURL,
      this.webformatWidth,
      this.webformatHeight,
      this.largeImageURL,
      this.imageWidth,
      this.imageHeight,
      this.imageSize,
      this.views,
      this.downloads,
      this.favorites,
      this.likes,
      this.comments,
      this.userId,
      this.user,
      this.userImageURL});

  Hits.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    pageURL = json['pageURL'];
    type = json['type'];
    tags = json['tags'];
    previewURL = json['previewURL'];
    previewWidth = json['previewWidth'];
    previewHeight = json['previewHeight'];
    webformatURL = json['webformatURL'];
    webformatWidth = json['webformatWidth'];
    webformatHeight = json['webformatHeight'];
    largeImageURL = json['largeImageURL'];
    imageWidth = json['imageWidth'];
    imageHeight = json['imageHeight'];
    imageSize = json['imageSize'];
    views = json['views'];
    downloads = json['downloads'];
    favorites = json['favorites'];
    likes = json['likes'];
    comments = json['comments'];
    userId = json['user_id'];
    user = json['user'];
    userImageURL = json['userImageURL'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['pageURL'] = this.pageURL;
    data['type'] = this.type;
    data['tags'] = this.tags;
    data['previewURL'] = this.previewURL;
    data['previewWidth'] = this.previewWidth;
    data['previewHeight'] = this.previewHeight;
    data['webformatURL'] = this.webformatURL;
    data['webformatWidth'] = this.webformatWidth;
    data['webformatHeight'] = this.webformatHeight;
    data['largeImageURL'] = this.largeImageURL;
    data['imageWidth'] = this.imageWidth;
    data['imageHeight'] = this.imageHeight;
    data['imageSize'] = this.imageSize;
    data['views'] = this.views;
    data['downloads'] = this.downloads;
    data['favorites'] = this.favorites;
    data['likes'] = this.likes;
    data['comments'] = this.comments;
    data['user_id'] = this.userId;
    data['user'] = this.user;
    data['userImageURL'] = this.userImageURL;
    return data;
  }
}
