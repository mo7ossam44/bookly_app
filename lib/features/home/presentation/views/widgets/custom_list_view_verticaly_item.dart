import 'package:bookly/constants.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating_widget.dart';

class CustomListViewItemVerticaly extends StatelessWidget {
  const CustomListViewItemVerticaly({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).push(AppRouter.kBookView),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        height: 160,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(10),
              child: SizedBox(
                width: 120,
                child: CachedNetworkImage(
                  fit: BoxFit.fill,
                  imageUrl: bookModel.volumeInfo.imageLinks!.thumbnail,
                ),
              ),
            ),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
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
                      Text('Free', style: Styles.textStyle20),
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
