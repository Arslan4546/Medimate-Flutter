class NewsApiModel {
  final String id;
  final String title;
  final String description;
  final String content;
  final String url;
  final String image;
  final String publishedAt;
  final String lang;
  final NewsSourceModel source;
  const NewsApiModel({
    required this.id,
    required this.title,
    required this.description,
    required this.content,
    required this.url,
    required this.image,
    required this.publishedAt,
    required this.lang,
    required this.source,
  });


  NewsApiModel copyWith({
    String? id,
    String? title,
    String? description,
    String? content,
    String? url,
    String? image,
    String? publishedAt,
    String? lang,
    NewsSourceModel? source,
  }) {
    return NewsApiModel(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      content: content ?? this.content,
      url: url ?? this.url,
      image: image ?? this.image,
      publishedAt: publishedAt ?? this.publishedAt,
      lang: lang ?? this.lang,
      source: source ?? this.source,
    );
  }

  factory NewsApiModel.fromJson(Map<String, dynamic> json) {
    return NewsApiModel(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      content: json['content'],
      url: json['url'],
      image: json['image'],
      publishedAt: json['publishedAt'],
      lang: json['lang'],
      source: NewsSourceModel.fromJson(json['source']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'content': content,
      'url': url,
      'image': image,
      'publishedAt': publishedAt,
      'lang': lang,
      'source': source.toJson(),
    };
  }

  @override
  String toString() {
    return '''NewsApiModel(id: $id, title: $title, description: $description, content: $content, url: $url, image: $image, publishedAt: $publishedAt, lang: $lang, source: $source)''';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is NewsApiModel &&
      other.id == id &&
      other.title == title &&
      other.description == description &&
      other.content == content &&
      other.url == url &&
      other.image == image &&
      other.publishedAt == publishedAt &&
      other.lang == lang &&
      other.source == source;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      title.hashCode ^
      description.hashCode ^
      content.hashCode ^
      url.hashCode ^
      image.hashCode ^
      publishedAt.hashCode ^
      lang.hashCode ^
      source.hashCode;
  }
}
class NewsSourceModel {
  final String id;
  final String name;
  final String url;
  final String country;

  NewsSourceModel({
    required this.id,
    required this.name,
    required this.url,
    required this.country,
  });

  factory NewsSourceModel.fromJson(Map<String, dynamic> json) {
    return NewsSourceModel(
      id: json["id"] ?? "",
      name: json["name"] ?? "",
      url: json["url"] ?? "",
      country: json["country"] ?? "",
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "url": url,
      "country": country,
    };
  }
}