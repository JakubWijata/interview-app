import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interview_app/injectable/injectable.dart';
import 'package:interview_app/src/presentation/views/book_browser/cubit/book_browser_cubit.dart';
import 'package:interview_app/src/presentation/views/book_browser/widgets/book_card.dart';
import 'package:interview_app/src/presentation/views/book_browser/widgets/info_message.dart';
import 'package:interview_app/src/presentation/views/book_browser/widgets/search_field.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BookBrowser extends StatelessWidget {
  const BookBrowser({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BookBrowserCubit>(
      create: (_) => getIt()..searchBooks(''),
      child: BlocConsumer<BookBrowserCubit, BookBrowserState>(
        listenWhen: (previous, current) =>
            previous.failure != current.failure && current.failure.isSome(),
        listener: (context, state) => _showErrorMessages(context),
        builder: (context, state) {
          return Scaffold(
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  children: [
                    SearchField(
                      onClear: () => context.read<BookBrowserCubit>().clear(),
                      onChanged: context.read<BookBrowserCubit>().searchBooks,
                    ),
                    SizedBox(height: 24),
                    Flexible(
                      child: SearchResultBody(),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _showErrorMessages(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(AppLocalizations.of(context)!.something_went_wrong),
      ),
    );
  }
}

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
        controller.position.maxScrollExtent * 0.7) {
      if (!context.read<BookBrowserCubit>().state.isLoading) {
        context.read<BookBrowserCubit>().loadMoreBooks();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookBrowserCubit, BookBrowserState>(
      builder: (context, state) {
        bool isMoreLoading = state.isLoading && state.books.isNotEmpty;
        return CustomScrollView(
          controller: controller,
          slivers: [
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return BookCard(
                    book: state.books[index],
                    onTap: () {},
                    saved: false,
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
  }
}
