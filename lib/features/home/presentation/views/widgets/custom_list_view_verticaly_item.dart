import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating_widget.dart';

class CustomListViewItemVerticaly extends StatelessWidget {
  const CustomListViewItemVerticaly({super.key,required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).push(AppRouter.kBookView),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        width: MediaQuery.of(context).size.width,
        height: 160,
        child: Row(
          children: [
            Image.network(bookModel.volumeInfo.imageLinks!.thumbnail),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      bookModel.volumeInfo.title!,
                      style: Styles.textStyle20.copyWith(
                        fontFamily: kPrimaryFont,
                      ),
                    ),
                  ),
                  Text(
                    bookModel.volumeInfo.authors!.first,
                    style: Styles.textStyle20.copyWith(
                      color: Colors.grey.shade500,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(bookModel.saleInfo!.country!, style: Styles.textStyle20),
                      BookRating(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
