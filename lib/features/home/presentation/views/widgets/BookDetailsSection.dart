import 'package:bookly_mvvm/core/utils/styles.dart';
import 'package:bookly_mvvm/features/home/data/models/bookmodel/bookmodel.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/book_action.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/custom_book_details_appbar.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/cupertino.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        const CustomBookDetailsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .17),
          child: CustomBookImage(
            urlImage: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
          ),
        ),
        const SizedBox(
          height: 43,
        ),
        Text(
          bookModel.volumeInfo.title!,
          style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text(
            bookModel.volumeInfo.authors![0],
            style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic, fontWeight: FontWeight.w500),
          ),
        ),
        const SizedBox(
          height: 18,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
          rating: '50',
        ),
        const SizedBox(
          height: 37,
        ),
        const BooksAction(),
      ],
    );
  }
}
