import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/utils/widgets/sliver_hight.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating_widget.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_view_app_bar.dart';

class BookDetailesViewBody extends StatelessWidget {
  const BookDetailesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: CustomScrollView(
        slivers: [
          CustomBookViewAppBar(),
          const SliverHight(hight: 20),
          SliverToBoxAdapter(
            child: Container(
              height: height * 0.32,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(AssetsData.bookPhoto)),
              ),
            ),
          ),
          const SliverHight(hight: 30),
          SliverToBoxAdapter(
            child: Text(
              'The Jungle Book',
              textAlign: TextAlign.center,
              style: Styles.textStyle30.copyWith(
                fontFamily: kPrimaryFont,
                wordSpacing: 3,
              ),
            ),
          ),
          const SliverHight(hight: 5),
          SliverToBoxAdapter(
            child: Text(
              'Rudyard Kipling',
              textAlign: TextAlign.center,
              style: Styles.textStyle20.copyWith(
                color: Colors.grey.shade500,
                letterSpacing: 3,
              ),
            ),
          ),
          const SliverHight(hight: 15),
          SliverToBoxAdapter(child: BookRating()),
          const SliverHight(hight: 20),
          const BooksAction(),
          const SliverHight(hight: 25),
          SliverToBoxAdapter(
            child: Text(
              'You can also like',
              textAlign: TextAlign.start,
              style: Styles.textStyle20.copyWith(
                letterSpacing: 1,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SliverHight(hight: 15),
          SimilarBooksListViewHorizontaly(),
          const SliverHight(hight: 100),
        ],
      ),
    );
  }
}
