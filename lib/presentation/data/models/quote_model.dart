class QuoteModel {
  String quote;
  String author;

  QuoteModel({required this.quote, required this.author});

  factory QuoteModel.fromJson(json) {
    return QuoteModel(
      quote: json['content'],
      author: json['author'],
    );
  }
}
