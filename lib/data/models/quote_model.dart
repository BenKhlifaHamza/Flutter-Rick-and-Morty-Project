class QuoteModel {
  String? quote;
  String? author;

  QuoteModel({this.quote, this.author});

  QuoteModel.fromJson(Map<String, dynamic> json) {
    quote = json['quote'];
    author = json['author'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['quote'] = quote;
    data['author'] = author;
    return data;
  }
}
