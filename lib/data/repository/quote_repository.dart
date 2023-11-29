import 'package:bloc_course/data/crud/quote_api.dart';
import 'package:bloc_course/data/models/quote_model.dart';

class QuoteRepository {
  final QuoteApi quoteApi;

  QuoteRepository(this.quoteApi);

  Future<List<QuoteModel>> getRandomQuotes() async {
    final quoteModel = await quoteApi.getRandomQuotes();
    return quoteModel.map((quote) => QuoteModel.fromJson(quote)).toList();
  }
}
