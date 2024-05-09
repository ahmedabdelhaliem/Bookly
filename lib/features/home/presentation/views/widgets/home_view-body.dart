import 'package:bookly_mvvm/features/home/presentation/views/widgets/CustomAppar.dart';
import 'package:bookly_mvvm/features/home/presentation/views/widgets/feature_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          CustomAppBar(),
          FeatureListView(),
        ],
      ),
    );
  }
}
