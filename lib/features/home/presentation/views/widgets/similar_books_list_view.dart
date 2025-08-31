import 'package:flutter/material.dart';

class SimilarBooksListViewHorizontaly extends StatelessWidget {
  const SimilarBooksListViewHorizontaly({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height * 0.2,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card();
        },
      ),
    );
  }
}
