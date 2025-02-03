import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:interview_app/injectable/injectable.dart';
import 'package:interview_app/src/presentation/views/book_browser/book_browser_cubit/book_browser_cubit.dart';
import 'package:interview_app/src/presentation/views/book_browser/favorite_books_cubit/favorite_books_cubit.dart';
import 'package:interview_app/src/presentation/views/book_browser/sign_out_cubit/sign_out_cubit.dart';
import 'package:interview_app/src/presentation/views/book_browser/widgets/favorite_books_bottom_sheet.dart';
import 'package:interview_app/src/presentation/views/book_browser/widgets/search_field.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:interview_app/src/presentation/views/book_browser/widgets/search_result_body.dart';

class BookBrowser extends StatelessWidget {
  const BookBrowser({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<BookBrowserCubit>(
          create: (_) => getIt()..searchBooks(''),
        ),
        BlocProvider<FavoriteBooksCubit>(
          create: (context) => getIt()..loadInitData(),
        ),
        BlocProvider<SignOutCubit>(
          create: (context) => getIt(),
        ),
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<FavoriteBooksCubit, FavoriteBooksState>(
            listenWhen: (previous, current) =>
                previous.failureLoadingBooks !=
                    current.failureProcessingBooks &&
                current.failureProcessingBooks.isSome(),
            listener: (context, state) => _showErrorMessages(context),
          ),
          BlocListener<BookBrowserCubit, BookBrowserState>(
            listenWhen: (previous, current) =>
                previous.failure != current.failure && current.failure.isSome(),
            listener: (context, state) => _showErrorMessages(context),
          ),
          BlocListener<SignOutCubit, SignOutState>(
            listenWhen: (previous, current) =>
                previous.failure != current.failure && current.failure.isSome(),
            listener: (context, state) => _showErrorMessages(context),
          ),
        ],
        child: BlocBuilder<BookBrowserCubit, BookBrowserState>(
          builder: (context, state) {
            return Scaffold(
              appBar: AppBar(
                title: Text(AppLocalizations.of(context)!.app_title),
                actions: [
                  BlocBuilder<SignOutCubit, SignOutState>(
                    builder: (context, state) {
                      return IconButton(
                        icon: state.isLoading
                            ? CircularProgressIndicator()
                            : Icon(Icons.logout),
                        onPressed: () => context.read<SignOutCubit>().signOut(),
                      );
                    },
                  ),
                ],
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () => FavoriteBooksBottomSheet.show(context),
                child: Icon(Icons.favorite),
              ),
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
