import 'package:bookly_mvvm/features/home/presentation/views/widgets/book_details_view_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(children: [BookDetailsViewBody()]),
    ));
  }
}
