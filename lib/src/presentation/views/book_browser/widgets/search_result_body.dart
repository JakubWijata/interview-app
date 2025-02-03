import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interview_app/src/domain/entities/book.dart';
import 'package:interview_app/src/presentation/views/book_browser/book_browser_cubit/book_browser_cubit.dart';
import 'package:interview_app/src/presentation/views/book_browser/favorite_books_cubit/favorite_books_cubit.dart';
import 'package:interview_app/src/presentation/views/book_browser/widgets/book_card.dart';
import 'package:interview_app/src/presentation/views/book_browser/widgets/info_message.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SearchResultBody extends StatelessWidget {
  const SearchResultBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookBrowserCubit, BookBrowserState>(
      builder: (context, state) {
        bool showInitMessage = state.books.isEmpty && state.query.isEmpty;
        bool showNotFoundMessage =
            state.books.isEmpty && state.query.isNotEmpty;
        bool isNewQueryLoading = state.books.isEmpty && state.isLoading;

        if (isNewQueryLoading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        if (showInitMessage) {
          return InfoMessage(
            title: AppLocalizations.of(context)!.missing_query_message,
            icon: Icons.search,
          );
        }

        if (showNotFoundMessage) {
          return InfoMessage(
            title:
                '${AppLocalizations.of(context)!.title_not_found_message} "${state.query}"',
            icon: Icons.search,
          );
        }

        return SearchResultList();
      },
    );
  }
}

class SearchResultList extends StatefulWidget {
  const SearchResultList({super.key});

  @override
  State<SearchResultList> createState() => _SearchResultListState();
}

class _SearchResultListState extends State<SearchResultList> {
  static const double _scrollThreshold = 0.7;
  late ScrollController controller;

  @override
  void initState() {
    super.initState();
    controller = ScrollController()..addListener(_scrollListener);
  }

  @override
  void dispose() {
    controller.removeListener(_scrollListener);
    super.dispose();
  }

  void _scrollListener() {
    if (controller.position.pixels >=
        controller.position.maxScrollExtent * _scrollThreshold) {
      if (!context.read<BookBrowserCubit>().state.isLoading) {
        context.read<BookBrowserCubit>().loadMoreBooks();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteBooksCubit, FavoriteBooksState>(
      builder: (context, favoriteBooksState) {
        return BlocBuilder<BookBrowserCubit, BookBrowserState>(
          builder: (context, state) {
            bool isMoreLoading = state.isLoading && state.books.isNotEmpty;
            return CustomScrollView(
              controller: controller,
              slivers: [
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      final book = state.books[index];

                      final bool isProcessing =
                          favoriteBooksState.processingBooks.contains(book);
                      final bool isFavorite =
                          favoriteBooksState.favoriteBooks.contains(book);

                      final cardState = isProcessing
                          ? BookCardState.inProgress
                          : isFavorite
                              ? BookCardState.favorite
                              : BookCardState.notFavorite;

                      return BookCard(
                        book: book,
                        onTap: () => _onBookCardTap(context, isFavorite, book),
                        bookCardState: cardState,
                      );
                    },
                    childCount: state.books.length,
                  ),
                ),
                if (isMoreLoading)
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                  ),
              ],
            );
          },
        );
      },
    );
  }

  void _onBookCardTap(BuildContext context, bool isFavorite, Book book) {
    if (isFavorite) {
      context.read<FavoriteBooksCubit>().removeFavoriteBook(book);
    } else {
      context.read<FavoriteBooksCubit>().addFavoriteBook(book);
    }
  }
}
