import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_model/Quote_view_model.dart';
import '../widgets/Card_Widget.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final favproviderquote = Provider.of<Quote_ViewModel>(context);

    return Scaffold(
        backgroundColor: Color(0xFF1A1A1A),
        appBar: AppBar(
          elevation: 5.0,
          backgroundColor: Colors.black,
          title: const Text(
            "Favourite",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: favproviderquote.favquotes.length,
            itemBuilder: (BuildContext context, int index) {
              final favquotedata = favproviderquote.favquotes[index];
              return CardWidget(
                quote: favquotedata,
              );
            }));
  }
}
