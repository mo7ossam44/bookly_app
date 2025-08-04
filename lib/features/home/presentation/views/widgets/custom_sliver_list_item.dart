import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:bookly/core/utils/assets.dart';

class CustomSliverListItem extends StatelessWidget {
  const CustomSliverListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      width: MediaQuery.of(context).size.width,
      height: 160,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(AssetsData.bookPhoto),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '''Harry Potter and the Globlet 
                         of Fire''',
                style: Styles.textStyle20.copyWith(fontFamily: kPrimaryFont),
                maxLines: 1,
                overflow: TextOverflow.fade,
              ),
              Text('J.K. Rowling', style: Styles.textStyle20),
              Row(
                children: [
                  Text('19.99 L.E', style: Styles.textStyle20),
                  SizedBox(width: 30),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Icon(Icons.star, color: Colors.yellow),
                      ),
                      Text(' 4.8(2390)', style: Styles.textStyle20),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
