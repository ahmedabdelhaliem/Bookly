import 'package:bookly_mvvm/constant.dart';
import 'package:bookly_mvvm/core/utils/app_routers.dart';
import 'package:bookly_mvvm/core/utils/assetsdata.dart';
import 'package:bookly_mvvm/core/utils/styles.dart';
import 'package:bookly_mvvm/features/home/data/models/bookmodel/bookmodel.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kHomeViewDetails);
      },
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            CustomBookImage(
                urlImage: bookModel.volumeInfo.imageLinks!.thumbnail),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * .5,
                      child: Text(
                        bookModel.volumeInfo.title!,
                        style: Styles.textStyle20
                            .copyWith(fontFamily: kGTSectraFine),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                      bookModel.volumeInfo.authors![0],
                      style: Styles.textStyle18,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      children: [
                        Text(
                          'Free',
                          style: Styles.textStyle20
                              .copyWith(fontWeight: FontWeight.bold),
                        ),
                        const Spacer(),
                        BookRating(
                          rating: bookModel.volumeInfo.maturityRating ?? '0',
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
