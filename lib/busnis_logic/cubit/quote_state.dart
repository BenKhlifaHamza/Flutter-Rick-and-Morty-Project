part of 'quote_cubit.dart';

@immutable
sealed class QuoteState {}

final class QuoteInitial extends QuoteState {}

final class QuoteLoaded extends QuoteState {
  late final List<QuoteModel> quotesList;
  QuoteLoaded(this.quotesList);
}
