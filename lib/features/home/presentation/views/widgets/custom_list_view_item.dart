import 'package:flutter/material.dart';
import 'package:bookly/features/home/data/models/book_model.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(bookModel.volumeInfo.imageLinks!.thumbnail),
          ),
        ),
      ),
    );
  }
}
