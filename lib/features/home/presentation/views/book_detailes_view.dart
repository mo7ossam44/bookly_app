import 'package:flutter/material.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_view_deatails_body.dart';

class BookDetailesView extends StatelessWidget {
  const BookDetailesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: BookDetailesViewBody()));
  }
}
