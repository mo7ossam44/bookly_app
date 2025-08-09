class BookModel {
  final String price;
  final String title;
  final String author;
  final String bookImage;
  final String description;

  BookModel({
    required this.price,
    required this.title,
    required this.author,
    required this.bookImage,
    required this.description,
  });

  factory BookModel.fromJson(json) {
    return BookModel(
      price: json['price'],
      title: json['title'],
      author: json['author'],
      bookImage: json['book_image'],
      description: json['description'],
    );
  }
}
