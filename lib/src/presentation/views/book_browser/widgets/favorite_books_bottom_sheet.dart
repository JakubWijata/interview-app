import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interview_app/src/presentation/views/book_browser/favorite_books_cubit/favorite_books_cubit.dart';
import 'package:interview_app/src/presentation/views/book_browser/widgets/book_card.dart';
import 'package:interview_app/src/presentation/views/book_browser/widgets/info_message.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class FavoriteBooksBottomSheet extends StatelessWidget {
  const FavoriteBooksBottomSheet({super.key});

  static void show(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (_) => BlocProvider.value(
        value: context.read<FavoriteBooksCubit>(),
        child: FavoriteBooksBottomSheet(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteBooksCubit, FavoriteBooksState>(
      builder: (context, state) {
        if (state.isLoadingBooks) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        if (state.failureLoadingBooks.isSome()) {
          return InfoMessage(
            title: AppLocalizations.of(context)!.something_went_wrong,
            icon: Icons.error,
          );
        }

        if (state.favoriteBooks.isEmpty) {
          return InfoMessage(
            title: AppLocalizations.of(context)!.no_favorite_books_message,
            icon: Icons.favorite_border,
          );
        }

        return ListView.builder(
          padding: EdgeInsets.all(16),
          itemCount: state.favoriteBooks.length,
          itemBuilder: (context, index) {
            final book = state.favoriteBooks[index];

            final bool isProcessing = state.processingBooks.contains(book);

            return BookCard(
              book: book,
              onTap: () =>
                  context.read<FavoriteBooksCubit>().removeFavoriteBook(book),
              bookCardState: isProcessing
                  ? BookCardState.inProgress
                  : BookCardState.favorite,
            );
          },
        );
      },
    );
  }
}
