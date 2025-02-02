import 'package:flutter/material.dart';
import 'package:interview_app/src/domain/entities/book.dart';

class BookCard extends StatelessWidget {
  const BookCard({
    super.key,
    required this.book,
    required this.onTap,
    required this.saved,
  });

  static const _headerFont = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
  );
  static const _authorsFont = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.normal,
    color: Colors.grey,
  );
  static const _cardPaddingSize = 16.0;

  static const _cardBorderRadius = BorderRadius.all(Radius.circular(10.0));
  static const _cardBorderSide = BorderSide(
    color: Colors.grey,
    width: 1.0,
  );

  static const _spacerSize = 8.0;

  final Book book;
  final bool saved;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: _cardBorderRadius,
          side: _cardBorderSide,
        ),
        child: Padding(
          padding: const EdgeInsets.all(_cardPaddingSize),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      book.title,
                      style: _headerFont,
                    ),
                    SizedBox(height: _spacerSize),
                    Text(
                      book.authorName.join(', '),
                      style: _authorsFont,
                    ),
                  ],
                ),
              ),
              IconButton(
                onPressed: onTap,
                icon: Icon(
                  saved ? Icons.favorite : Icons.favorite_border,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
