import 'package:flutter/material.dart';
import '../data/Quotes_Data.dart';
import '../model/Quote_Model.dart';

class Quote_ViewModel extends ChangeNotifier {
  List<QuoteModel> _quotes = quotes_data;

  List<QuoteModel> _favquotes = [];
  List<QuoteModel> get favquotes => _favquotes;

  List<QuoteModel> get quotes => _quotes;

  void addfavquote(QuoteModel quote) {
    if (quote.favourite) {
      quote.favourite = !quote.favourite;
      favquotes.remove(quote);
    } else {
      quote.favourite = !quote.favourite;
      favquotes.add(quote);
    }
    notifyListeners();
  }
}
