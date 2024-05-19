import 'package:bookly_mvvm/features/home/presentation/views/widgets/best_seller_list_view-item.dart';
import 'package:flutter/cupertino.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10), child: Text('data')
            // BookListViewItem(bookModel: null,),
            );
      },
    );
  }
}
