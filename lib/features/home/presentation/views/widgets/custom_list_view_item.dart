import 'package:flutter/material.dart';
import 'package:bookly/features/home/data/models/book_model.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key, this.bookModel});

  final BookModel? bookModel;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: Container(
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 255, 212, 160),
              spreadRadius: 0.1,
              blurRadius: 5,
              offset: Offset(1, 1),
            ),
          ],
          // image: DecorationImage(
          //   fit: BoxFit.cover,
          //   image: NetworkImage(),
          // ),
        ),
      ),
    );
  }
}
