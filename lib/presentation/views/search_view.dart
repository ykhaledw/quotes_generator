import 'package:flutter/material.dart';
import 'package:quote_generator_app/presentation/views/widgets/constants.dart';
import 'package:quote_generator_app/presentation/views/widgets/search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      body: SearchViewBody(),
    );
  }
}