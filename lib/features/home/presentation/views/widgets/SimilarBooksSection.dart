import 'package:bookly_mvvm/core/utils/styles.dart';
import 'package:bookly_mvvm/features/home/data/models/bookmodel/bookmodel.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/SimilarBooksListView.dart';
import 'package:flutter/cupertino.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You can also like',
              style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
            )),
        const SizedBox(
          height: 16,
        ),
        SimilarBooksListView(
          bookModel: bookModel,
        ),
      ],
    );
  }
}
