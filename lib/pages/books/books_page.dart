import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:harry_potter/cubit/books/books_cubit.dart';
import 'package:harry_potter/pages/books/item_book.dart';

class BooksPage extends StatefulWidget {
  const BooksPage({super.key});

  @override
  State<BooksPage> createState() => _BooksPageState();
}

class _BooksPageState extends State<BooksPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocProvider(
          create: (_) => BooksCubit()..getBooks(),
          child: BlocBuilder<BooksCubit, BooksState>(
            builder: (context, state) {
              switch (state) {
                case BooksLoading():
                  return Center(child: CircularProgressIndicator());
                case BooksSuccess(:final books):
                  return ListView.builder(
                    itemCount: books.length,
                    itemBuilder: (context, index) {
                      return ItemBook(book: books[index]);
                    },
                  );
                default:
                  return const SizedBox();
              }
            },
          ),
        ),
      ),
    );
  }
}
