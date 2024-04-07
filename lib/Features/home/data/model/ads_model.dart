class AdsModel {
  int? id;
  String? title;
  String? imgLink;
  String? href;
  String? query;

  AdsModel({this.id, this.title, this.imgLink, this.href, this.query});

  factory AdsModel.fromJson(Map<String, dynamic> json) => AdsModel(
        id: json['id'] as int?,
        title: json['title'] as String?,
        imgLink: json['imgLink'] as String?,
        href: json['href'] as String?,
        query: json['query'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'imgLink': imgLink,
        'href': href,
        'query': query,
      };
}
