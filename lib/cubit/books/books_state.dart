part of 'books_cubit.dart';

sealed class BooksState {}

final class BooksInitial extends BooksState {}

final class BooksLoading extends BooksState {}

final class BooksSuccess extends BooksState {
  final List<Book> books;

  BooksSuccess(this.books);
}
