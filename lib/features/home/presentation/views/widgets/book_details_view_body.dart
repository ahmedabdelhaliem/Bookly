import 'package:bookly_mvvm/core/utils/assetsdata.dart';
import 'package:bookly_mvvm/core/utils/styles.dart';
import 'package:bookly_mvvm/features/home/data/models/bookmodel/bookmodel.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/BookDetailsSection.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/SimilarBooksListView.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/SimilarBooksSection.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/custom_book_details_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                BookDetailsSection(
                  bookModel: bookModel,
                ),
                const Expanded(child: SizedBox(height: 25)),
                SimilarBooksSection(
                  bookModel: bookModel,
                ),
                const SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
