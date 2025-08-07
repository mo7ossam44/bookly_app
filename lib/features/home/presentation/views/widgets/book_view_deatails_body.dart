import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_view_app_bar.dart';
import 'package:bookly/features/home/presentation/views/widgets/list_view_builder_horizontal.dart';
import 'package:bookly/features/home/presentation/views/widgets/sliver_hight.dart';
import 'package:flutter/material.dart';

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
          SliverHight(hight: 20),
          SliverToBoxAdapter(
            child: Container(
              height: height * 0.32,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(AssetsData.bookPhoto)),
              ),
            ),
          ),
          SliverHight(hight: 30),
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
          SliverHight(hight: 5),
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
          SliverHight(hight: 15),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsetsGeometry.only(right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Icon(Icons.star, color: Colors.yellow),
                  ),
                  Text(' 4.8(2390)', style: Styles.textStyle20),
                ],
              ),
            ),
          ),
          SliverHight(hight: 20),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(),
              height: 60,
              child: Row(
                children: [
                  Container(
                    height: 60,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      '19.99 L.E',
                      style: Styles.textStyle25.copyWith(color: Colors.black),
                    ),
                  ),
                  Container(
                    height: 60,
                    width: 150,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 135, 55),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Text('Free preview', style: Styles.textStyle20),
                  ),
                ],
              ),
            ),
          ),
          SliverHight(hight: 25),
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
          SliverHight(hight: 15),
          ListViewBuilderHorizontaly(h: 150),
          SliverHight(hight: 100),
        ],
      ),
    );
  }
}
