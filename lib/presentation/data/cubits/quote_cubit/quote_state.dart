import 'package:quote_generator_app/presentation/data/models/quote_model.dart';

abstract class QuoteState {}

class QuoteStateInitial extends QuoteState {}
class QuoteStateLoading extends QuoteState {}

class QuoteStateLoaded extends QuoteState {
  QuoteModel quoteModel;

  QuoteStateLoaded(this.quoteModel);
}

class QuoteStateFailure extends QuoteState {
  final String errMessage;

  QuoteStateFailure(this.errMessage);
}
