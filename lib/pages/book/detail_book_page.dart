import 'package:flutter/material.dart';
import 'package:harry_potter/model/book/book.dart';

class DetailBookPage extends StatelessWidget {
  final Book book;
  const DetailBookPage({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Book Details')),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(book.cover, height: 300),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  book.title,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text('Pages: ${book.pages}'),
                const SizedBox(height: 4),
                Text('Release date: ${book.releaseDate}'),
                const SizedBox(height: 4),
                Text('Original title: ${book.originalTitle}'),
                const SizedBox(height: 4),
                Text('Book number: ${book.number}'),
                const SizedBox(height: 16),
                Text(book.description, style: const TextStyle(fontSize: 16)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
