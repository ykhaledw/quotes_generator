import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:quote_generator_app/presentation/data/models/quote_model.dart';

class QuoteService {
  final Dio dio = Dio();

  Future<QuoteModel> getQuote() async {
    try {
      Response response =
          await dio.get('https://api.quotable.io/quotes/random');
      QuoteModel quoteModel = QuoteModel.fromJson(response.data);
      return quoteModel;
    } catch (e) {
      log(e.toString());
      throw Exception('There was an error, try again !');
    }
  }
}
