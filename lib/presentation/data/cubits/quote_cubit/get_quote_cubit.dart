import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quote_generator_app/presentation/data/cubits/quote_cubit/quote_state.dart';
import 'package:quote_generator_app/presentation/data/models/quote_model.dart';
import 'package:quote_generator_app/core/utils/quotes_service.dart';

class GetQuoteCubit extends Cubit<QuoteState> {
  GetQuoteCubit() : super(QuoteStateInitial());

  QuoteModel? quoteModel;

  getQuote() async {
    emit(QuoteStateLoading());
    try {
      QuoteModel quoteModel = await QuotesService().getQuote();
      emit(QuoteStateLoaded(quoteModel));
    } catch (e) {
      emit(QuoteStateFailure(e.toString()));
    }
  }
}
