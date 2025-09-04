import 'package:flutter/material.dart';
import 'package:harry_potter/model/book/book.dart';
import 'package:harry_potter/model/character/character.dart';
import 'package:harry_potter/pages/book/detail_book_page.dart';
import 'package:harry_potter/pages/books/books_page.dart';
import 'package:harry_potter/pages/character/detail_character_page.dart';
import 'package:harry_potter/pages/characters/characters_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: '/',
      routes: {'/': (context) => const HomePage()},
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/character':
            final character = settings.arguments as Character;
            return MaterialPageRoute(
              builder: (_) => DetailCharacterPage(character: character),
            );
          case '/book':
            final book = settings.arguments as Book;
            return MaterialPageRoute(
              builder: (_) => DetailBookPage(book: book),
            );
        }
        return null;
      },
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [CharactersPage(), BooksPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _currentIndex, children: _pages),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Characters",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.book), label: "Books"),
        ],
      ),
    );
  }
}
