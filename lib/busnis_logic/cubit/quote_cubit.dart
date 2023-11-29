import 'package:bloc/bloc.dart';
import 'package:bloc_course/data/models/quote_model.dart';
import 'package:bloc_course/data/repository/quote_repository.dart';
import 'package:meta/meta.dart';

part 'quote_state.dart';

class QuoteCubit extends Cubit<QuoteState> {
  final QuoteRepository quoteRepository;
  QuoteCubit(this.quoteRepository) : super(QuoteInitial());

  void getRandomQuotes() {
    quoteRepository.getRandomQuotes().then((quote) => emit(QuoteLoaded(quote)));
  }
}
