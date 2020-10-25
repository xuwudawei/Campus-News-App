class NewsModel {
  String title;
  String content;
  String description;
  String date;
  String url;
  String image;
  String category;

  NewsModel({
    this.category,
    this.title,
    this.content,
    this.description,
    this.date,
    this.url,
    this.image,
  });

  NewsModel.fromJson(parsedJson) {
    title = parsedJson["title"];
    url = parsedJson["url"];
    content = parsedJson["content"];
    category = parsedJson["category"];
    image = parsedJson["imageUrl"];
    description = parsedJson["description"];
    date = parsedJson["date"];
  }
}
