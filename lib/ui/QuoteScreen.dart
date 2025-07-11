import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_model/Quote_view_model.dart';
import '../widgets/Card_Widget.dart';

class QuoteScreen extends StatelessWidget {
  const QuoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final providerquote = Provider.of<Quote_ViewModel>(context);

    return Scaffold(
        backgroundColor: Color(0xFF1A1A1A),
        appBar: AppBar(
          elevation: 5.0,
          title: Text(
            'Quotes',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: ListView.builder(
            itemCount: providerquote.quotes.length,
            itemBuilder: (BuildContext context, int index) {
              final quotedata = providerquote.quotes[index];
              return FadeInUp(
                child: CardWidget(
                  quote: quotedata,
                ),
              );
            }));
  }
}
