import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:quote_generator_app/constants.dart';
import 'package:quote_generator_app/models/quote_model.dart';

class QuotesService {
  final Dio dio = Dio();

  Future<QuoteModel> getWeather({required String cityName}) async {
    try {
      Response response = await dio
          .get(apiUrl);
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