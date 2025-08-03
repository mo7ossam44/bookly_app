
import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SliverListBuilder extends StatelessWidget {
  const SliverListBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 10,
      itemBuilder: (context, index) => Container(
        width: MediaQuery.of(context).size.width,
        height: 160,
        child: Row(
          children: [
            Image.asset(AssetsData.bookPhoto),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '''Harry Potter and the Globlet 
                         of Fire''',
                  style: TextStyle(fontSize: 20),
                  maxLines: 1,
                  overflow: TextOverflow.fade,
                ),
                Text(
                  'J.K. Rowling',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: kSecandryFont,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      '19.99 L.E',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: kSecandryFont,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(width: 30),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Icon(Icons.star, color: Colors.yellow),
                        ),
                        Text(
                          ' 4.8(2390)',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: kSecandryFont,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
