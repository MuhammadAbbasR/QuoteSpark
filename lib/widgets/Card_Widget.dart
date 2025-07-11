import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../model/Quote_Model.dart';
import '../view_model/Quote_view_model.dart';

class CardWidget extends StatefulWidget {
  final QuoteModel quote;

  const CardWidget({
    super.key,
    required this.quote,
  });

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    final favprovider = Provider.of<Quote_ViewModel>(context);

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: const BorderSide(color: Colors.white, width: 2),
      ),
      elevation: 4,
      margin: const EdgeInsets.all(16),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(widget.quote.img),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.4),
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    icon: Icon(
                      widget.quote.favourite
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: widget.quote.favourite ? Colors.red : Colors.white,
                    ),
                    onPressed: () {
                      favprovider.addfavquote(widget.quote);
                    },
                  ),
                ],
              ),
              Text(
                widget.quote.quote,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                widget.quote.name,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
