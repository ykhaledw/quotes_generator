import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quote_generator_app/constants.dart';
import 'package:quote_generator_app/presentation/data/cubits/quote_cubit/get_quote_cubit.dart';
import 'package:quote_generator_app/presentation/data/cubits/quote_cubit/quote_state.dart';
import 'package:quote_generator_app/presentation/views/favourites_view.dart';
import 'package:quote_generator_app/presentation/views/widgets/favourite_quotes_button.dart';
import 'package:quote_generator_app/presentation/views/widgets/quotes_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetQuoteCubit, QuoteState>(
      builder: (context, state) {
        if (state is QuoteStateLoading) {
          return const Center(
            child: Text('Loading'),
          );
        } else if (state is QuoteStateLoaded) {
          return Scaffold(
            backgroundColor: kPrimaryColor,
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(
                    flex: 14,
                  ),
                  FavouriteQuotesButton(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return const FavouritesView();
                      }));
                    },
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  QuotesView(quoteModel: state.quoteModel),
                  const Spacer(
                    flex: 14,
                  ),
                ],
              ),
            ),
          );
        } else {
          return const Center(
            child: Text('There was an error'),
          );
        }
      },
    );
  }
}


/*Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(
              flex: 14,
            ),
            FavouriteQuotesButton(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return const FavouritesView();
                }));
              },
            ),
            const Spacer(
              flex: 1,
            ),
            const QuotesView(),
            const Spacer(
              flex: 14,
            ),
          ],
        ),
      ),
    )*/