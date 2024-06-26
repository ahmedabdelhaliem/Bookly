import 'package:bookly_mvvm/core/utils/styles.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/BestSellerListView.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/CustomAppar.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/feature_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomAppBar(),
                    FeatureListView(),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Best Seller',
                      style: Styles.textStyle18,
                    ),
                  ],
                ),
              ),
              SliverFillRemaining(
                child: BestSellerListView(),
              )
            ],
          )),
    );
  }
}
