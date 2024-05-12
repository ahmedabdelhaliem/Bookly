import 'package:bookly_mvvm/features/home/presentation/views/widgets/custom_book_details_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [CustomBookDetailsAppBar()],
    );
  }
}
