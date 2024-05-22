import 'package:bookly_mvvm/core/utils/app_routers.dart';
import 'package:bookly_mvvm/core/widgets/custom_err_mesage.dart';
import 'package:bookly_mvvm/core/widgets/custom_loading.dart';
import 'package:bookly_mvvm/features/home/presentation/manager/feature_books_cubit/faiture_books_cubit.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FeatureListView extends StatelessWidget {
  const FeatureListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBooksCubit, FeatureBooksState>(
      builder: (context, state) {
        if (state is FeatureBooksSuccess) {
          return Builder(builder: (context) {
            return SizedBox(
              height: MediaQuery.of(context).size.height * .3,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: state.books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: GestureDetector(
                      onTap: () {
                        GoRouter.of(context).push(AppRouter.kHomeViewDetails,
                            extra: state.books[index]);
                      },
                      child: CustomBookImage(
                        urlImage: state
                            .books[index].volumeInfo.imageLinks!.smallThumbnail,
                      ),
                    ),
                  );
                },
              ),
            );
          });
        } else if (state is FeatureBooksFailure) {
          return CustomErrMessage(errMessage: state.errorMessage);
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
