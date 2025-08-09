import 'package:bookly/features/home/presentation/views/widgets/custom_sliver_list_item.dart';
import 'package:flutter/material.dart';

class CustomSearch extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text('');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      itemBuilder: (context, index) => CustomSliverListItem(),
      itemCount: 10,
    );
  }
}
