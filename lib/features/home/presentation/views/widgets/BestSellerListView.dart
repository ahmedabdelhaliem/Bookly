import 'package:bookly_mvvm/core/widgets/custom_err_mesage.dart';
import 'package:bookly_mvvm/core/widgets/custom_loading.dart';
import 'package:bookly_mvvm/features/home/presentation/manager/feature_books_cubit/faiture_books_cubit.dart';
import 'package:bookly_mvvm/features/home/presentation/manager/featured_newest_books-cubit/featured_newest_books_cubit.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/best_seller_list_view-item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedNewestBooksCubit, FeaturedNewestBooksState>(
      builder: (context, state) {
        if (state is FeaturedNewestBooksSuccess) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BookListViewItem(
                  bookModel: state.books[index],
                ),
              );
            },
          );
        } else if (state is FeaturedNewestBooksFailure) {
          return CustomErrMessage(errMessage: state.errMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
