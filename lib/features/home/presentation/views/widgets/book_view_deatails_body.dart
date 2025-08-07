import 'package:flutter/material.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_deatails_section.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_view_app_bar.dart';

class BookDetailesViewBody extends StatelessWidget {
  const BookDetailesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: const [
                CustomBookViewAppBar(),
                SizedBox(height: 20),
                BookDetailsSection(),
                Expanded(child: SizedBox(height: 25)),
                SimilarBooksSection(),
                SizedBox(height: 100),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

