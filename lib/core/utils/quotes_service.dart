import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:quote_generator_app/presentation/data/models/quote_model.dart';

class QuotesService {
  final Dio dio = Dio();

  Future<QuoteModel> getQuote() async {
    try {
      Response response =
          await dio.get('https://api.quotable.io/quotes/random');
      QuoteModel quoteModel = QuoteModel.fromJson(response.data);

      return quoteModel;
    } on DioException catch (e) {
      final String errorMessage = e.response?.data['statusMessage'] ??
          'Oops! There was an error, try later';
      throw Exception(errorMessage);
    } catch (e) {
      log(e.toString());
      throw Exception('Oops! There was an error, try later');
    }
  }
}
