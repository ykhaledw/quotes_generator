part of 'quote_cubit.dart';

@immutable
sealed class GenerateQuoteState {}

final class GenerateQuoteInitial extends GenerateQuoteState {}

final class GenerateQuoteLoading extends GenerateQuoteState {}

final class GenerateQuoteSuccess extends GenerateQuoteState {}

final class GenerateQuoteFailure extends GenerateQuoteState {
  final String errorMessage;

  GenerateQuoteFailure({required this.errorMessage});
}
