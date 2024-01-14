import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quote_generator_app/presentation/data/cubits/quote_cubit/get_quote_cubit.dart';
import 'package:quote_generator_app/presentation/data/cubits/quote_cubit/quote_state.dart';
import 'package:quote_generator_app/presentation/views/home_view.dart';

void main() {
  runApp(const QuoteGeneratorApp());
}

class QuoteGeneratorApp extends StatelessWidget {
  const QuoteGeneratorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetQuoteCubit(),
      child: Builder(
        builder: (context) => BlocBuilder<GetQuoteCubit, QuoteState>(
          builder: (context, state) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                fontFamily: 'Teko',
              ),
              home: const HomeView(),
            );
          },
        ),
      ),
    );
  }
}


/*MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Teko',
      ),
      home: const HomeView(),
    )*/