import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:harry_potter/model/book/book.dart';

part 'books_state.dart';

class BooksCubit extends Cubit<BooksState> {
  BooksCubit() : super(BooksInitial());

  void getBooks() async {
    emit(BooksLoading());
    final dio = Dio();
    final response = await dio.get(
      'https://potterapi-fedeperin.vercel.app/en/books',
    );
    final List<Book> books = (response.data as List)
        .map((jsonBook) => Book.fromJson(jsonBook))
        .toList();
    emit(BooksSuccess(books));
  }
}
