import 'package:flutter/material.dart';

class HomeSection extends StatefulWidget {
  const HomeSection({super.key});

  @override
  State<HomeSection> createState() => _HomeSectionState();
}

class _HomeSectionState extends State<HomeSection> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = <Widget>[
    _bookListView(),
    Text('Search', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text(
      'Profile',
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: Text(
          'BOOK COLLECTIONS',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: _pages[_selectedIndex],
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Me'),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
      ),
    );
  }
}

Widget _bookListView() {
  return ListView(
    children: [
      ListTile(
        leading: Image.asset('assets/images/books.jpeg'),
        title: Text(
          "Alice's Adventures in Wonderland",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        trailing: Text(
          '-Lewis Caroll',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          'This edition brings together the complete and unbridged text with more than 70 stunning illustrations by Robert Ingpen, each reflecting his unique style and extraodinary imagination in visualising this enchanting story.',
        ),
      ),
      ListTile(
        leading: Image.asset('assets/images/books.jpeg'),
        title: Text(
          "Alice's Adventures in Wonderland",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        trailing: Text(
          '-Lewis Caroll',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          'This edition brings together the complete and unbridged text with more than 70 stunning illustrations by Robert Ingpen, each reflecting his unique style and extraodinary imagination in visualising this enchanting story.',
        ),
      ),
      ListTile(
        leading: Image.asset('assets/images/books.jpeg'),
        title: Text(
          "Alice's Adventures in Wonderland",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        trailing: Text(
          '-Lewis Caroll',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          'This edition brings together the complete and unbridged text with more than 70 stunning illustrations by Robert Ingpen, each reflecting his unique style and extraodinary imagination in visualising this enchanting story.',
        ),
      ),
      ListTile(
        leading: Image.asset('assets/images/books.jpeg'),
        title: Text(
          "Alice's Adventures in Wonderland",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        trailing: Text(
          '-Lewis Caroll',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          'This edition brings together the complete and unbridged text with more than 70 stunning illustrations by Robert Ingpen, each reflecting his unique style and extraodinary imagination in visualising this enchanting story.',
        ),
      ),
      ListTile(
        leading: Image.asset('assets/images/books.jpeg'),
        title: Text(
          "Alice's Adventures in Wonderland",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        trailing: Text(
          '-Lewis Caroll',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          'This edition brings together the complete and unbridged text with more than 70 stunning illustrations by Robert Ingpen, each reflecting his unique style and extraodinary imagination in visualising this enchanting story.',
        ),
      ),
      ListTile(
        leading: Image.asset('assets/images/books.jpeg'),
        title: Text(
          "Alice's Adventures in Wonderland",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        trailing: Text(
          '-Lewis Caroll',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          'This edition brings together the complete and unbridged text with more than 70 stunning illustrations by Robert Ingpen, each reflecting his unique style and extraodinary imagination in visualising this enchanting story.',
        ),
      ),
      ListTile(
        leading: Image.asset('assets/images/books.jpeg'),
        title: Text(
          "Alice's Adventures in Wonderland",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        trailing: Text(
          '-Lewis Caroll',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          'This edition brings together the complete and unbridged text with more than 70 stunning illustrations by Robert Ingpen, each reflecting his unique style and extraodinary imagination in visualising this enchanting story.',
        ),
      ),
      ListTile(
        leading: Image.asset('assets/images/books.jpeg'),
        title: Text(
          "Alice's Adventures in Wonderland",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        trailing: Text(
          '-Lewis Caroll',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          'This edition brings together the complete and unbridged text with more than 70 stunning illustrations by Robert Ingpen, each reflecting his unique style and extraodinary imagination in visualising this enchanting story.',
        ),
      ),
    ],
  );
}
