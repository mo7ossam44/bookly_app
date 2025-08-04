import 'package:bookly/features/home/presentation/views/widgets/book_view_deatails_body.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_view_app_bar.dart';
import 'package:flutter/material.dart';

class BookDetailesView extends StatelessWidget {
  const BookDetailesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SafeArea(child: BookDetailesViewBody()));
  }
}
