import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quote_generator_app/core/utils/quote_service.dart';

part 'quote_state.dart';

class QuoteCubit extends Cubit<GenerateQuoteState> {
  QuoteCubit(this.quoteService) : super(GenerateQuoteInitial());
  final QuoteService quoteService;

  Future generateQuote() async {
    emit(GenerateQuoteLoading());
    try {
      var data = await quoteService.getQuote();
      emit(GenerateQuoteSuccess());
      return data;
    } catch (e) {
      emit(GenerateQuoteFailure(errorMessage: e.toString()));
    }
  }
}
