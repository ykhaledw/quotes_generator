import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'quote_state.dart';

class QuoteCubit extends Cubit<GenerateQuoteState> {
  QuoteCubit() : super(GenerateQuoteInitial());
}
