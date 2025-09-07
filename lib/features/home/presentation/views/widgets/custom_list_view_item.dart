import 'package:bookly/core/utils/widgets/custom_loading_indicator.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:bookly/features/home/data/models/book_model.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.7 / 4,
      child: CachedNetworkImage(
        fit: BoxFit.fill,
        imageUrl: bookModel.volumeInfo.imageLinks!.thumbnail,
        errorWidget: (context, url, error) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.error_outline, color: Colors.red, size: 70),
            Text('Fail Loading..'),
          ],
        ),
        placeholder: (context, url) => CustomLoadingIndicator(),
      ),
    );
  }
}


// Container(
//         margin: EdgeInsets.only(right: 15),
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             fit: BoxFit.cover,
//             image: NetworkImage(bookModel.volumeInfo.imageLinks!.thumbnail),
//           ),
//         ),
//       ),